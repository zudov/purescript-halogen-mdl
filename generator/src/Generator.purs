module Generator where

import Prelude
import Control.Alt ((<|>))
import Data.Bifunctor (bimap, rmap)
import Data.Either (Either, either)
import Data.Foldable (foldMap)
import Data.Monoid (mempty)
import Data.Tuple (Tuple(..))
import Text.Parsing.Simple (Parser, eof, fromCharList, item, many, notFollowedBy, parse, string)

import Data.List (List())
import Data.List as List
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import Data.Set as Set
import Data.StrMap (StrMap)
import Data.StrMap as StrMap
import Data.String (Pattern(..))
import Data.String as String

foreign import camelCase :: String -> String
foreign import upperFirst :: String -> String

newtype ClassName    = ClassName String
derive instance classNameEq :: Eq ClassName
derive instance classNameOrd :: Ord ClassName

newtype BlockName    = BlockName String
newtype ElementName  = ElementName String
newtype ModifierName = ModifierName String
newtype ModuleName   = ModuleName String
derive instance moduleNameEq :: Eq ModuleName
derive instance moduleNameOrd :: Ord ModuleName
newtype FunctionName = FunctionName String
derive instance functionNameEq :: Eq FunctionName
derive instance functionNameOrd :: Ord FunctionName

newtype ClassNameDecl
  = ClassNameDecl
      { name :: FunctionName
      , className :: ClassName
      }

derive instance eqClassNameDecl :: Eq ClassNameDecl
derive instance ordClassNameDecl :: Ord ClassNameDecl


data MDLClass
  = Block
      { block :: ClassName }
  | Element
      { block :: ClassName
      , element :: ClassName
      }
  | BlockModifier
      { block :: ClassName
      , modifier :: ClassName
      }
  | ElementModifier
      { block :: ClassName
      , element :: ClassName
      , modifier :: ClassName
      }

printMDLClass :: MDLClass -> String
printMDLClass c = case c of
  Block { block: ClassName block }
    -> block
  Element { block: ClassName block, element: ClassName element }
    -> block <> "__" <> element
  BlockModifier { block: ClassName block, modifier: ClassName modifier }
    -> block <> "--" <> modifier
  ElementModifier { block: ClassName block, element: ClassName element, modifier: ClassName modifier }
    -> block <> "__" <> element <> "--" <> modifier

stripMDL :: String -> String
stripMDL s = fromMaybe s (String.stripPrefix (Pattern "mdl-") s)

toClassNameDecl :: MDLClass -> Tuple ModuleName ClassNameDecl
toClassNameDecl c = case c of
  Block { block: ClassName block }
    -> Tuple
         (ModuleName "MDL")
         (ClassNameDecl
            { name: FunctionName (camelCase $ stripMDL block)
            , className: ClassName (printMDLClass c)
            })
  Element { block: ClassName block, element: ClassName element }
    -> Tuple
         (ModuleName ("MDL." <> upperFirst (camelCase $ stripMDL block)))
         (ClassNameDecl
            { name: FunctionName (camelCase element)
            , className: ClassName (printMDLClass c)
            })
  BlockModifier { block: ClassName block, modifier: ClassName modifier }
    -> Tuple
         (ModuleName ("MDL." <> upperFirst (camelCase $ stripMDL block)))
         (ClassNameDecl
            { name: FunctionName ("_" <> camelCase modifier)
            , className: ClassName (printMDLClass c)
            })
  ElementModifier { block: ClassName block, element: ClassName element, modifier: ClassName modifier }
    -> Tuple
         (ModuleName ("MDL." <> upperFirst (camelCase $ stripMDL block) <> "."
                             <> upperFirst (camelCase element)))
         (ClassNameDecl
            { name: FunctionName ("_" <> camelCase modifier)
            , className: ClassName (printMDLClass c)
            })

mdlClass :: ClassName -> Either String MDLClass
mdlClass (ClassName className) =
  parse pMdlClass className

pSegment :: Parser String ClassName
pSegment =
  ClassName <<< fromCharList
    <$> many (notFollowedBy (string "--" <|> string "__") *> item)

pMdlClass :: Parser String MDLClass
pMdlClass =
  pMdlBlock <|> pMdlElement <|> pMdlBlockModifier <|> pMdlElementModifier

pMdlBlock :: Parser String MDLClass
pMdlBlock = Block <<< { block: _ } <$> (pSegment <* eof)

pMdlElement :: Parser String MDLClass
pMdlElement = do
  block <- pSegment
  _ <- string "__"
  element <- pSegment
  eof $> Element { block, element }

pMdlBlockModifier :: Parser String MDLClass
pMdlBlockModifier = do
  block <- pSegment
  _ <- string "--"
  modifier <- pSegment
  eof $> BlockModifier { block, modifier }

pMdlElementModifier :: Parser String MDLClass
pMdlElementModifier = do
  block <- pSegment
  _ <- string "__"
  element <- pSegment
  _ <- string "--"
  modifier <- pSegment
  eof $> ElementModifier { block, element, modifier }


generateModules :: Set ClassName -> Map ModuleName (Set ClassNameDecl)
generateModules =
  List.fromFoldable
    >>> foldMap
          (mdlClass
            >>> either
                  (const mempty)
                  (toClassNameDecl
                      >>> rmap Set.singleton
                      >>> List.singleton))
    >>> Map.fromFoldableWith (<>)

gen1 :: Array ClassName -> List (Tuple ModuleName (Set ClassNameDecl))
gen1 = Set.fromFoldable >>> generateModules >>> Map.toUnfoldable

generateModules' :: Array ClassName -> StrMap (Array ClassNameDecl)
generateModules' =
  gen1
    >>> map (bimap
               (\(ModuleName m) -> m)
               Set.toUnfoldable)
    >>> StrMap.fromFoldable
