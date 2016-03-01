module Generator where

import Prelude

import Data.String as String
import Control.Apply
import Control.Alt
import Data.Tuple
import Data.Monoid
import Data.Functor
import Data.Either
import Data.Foldable
import Data.Maybe (fromMaybe)
import Data.Map (Map())
import Data.Map as Map
import Data.StrMap (StrMap)
import Data.StrMap as StrMap
import Data.List as List
import Data.Set (Set())
import Data.Set as Set
import Data.Bifunctor

import Text.Parsing.Simple

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
stripMDL s = fromMaybe s (String.stripPrefix "mdl-" s)

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

pSegment :: Parser ClassName
pSegment =
  ClassName <<< fromCharList
    <$> many (notFollowedBy (string "--" <|> string "__") *> item)

pMdlClass :: Parser MDLClass
pMdlClass =
  pMdlBlock <|> pMdlElement <|> pMdlBlockModifier <|> pMdlElementModifier

pMdlBlock :: Parser MDLClass
pMdlBlock = Block <<< { block: _ } <$> (pSegment <* eof)

pMdlElement :: Parser MDLClass
pMdlElement = do
  block <- pSegment
  string "__"
  element <- pSegment
  eof $> Element { block, element }

pMdlBlockModifier :: Parser MDLClass
pMdlBlockModifier = do
  block <- pSegment
  string "--"
  modifier <- pSegment
  eof $> BlockModifier { block, modifier }

pMdlElementModifier :: Parser MDLClass
pMdlElementModifier = do
  block <- pSegment
  string "__"
  element <- pSegment
  string "--"
  modifier <- pSegment
  eof $> ElementModifier { block, element, modifier }


generateModules :: Set ClassName -> Map ModuleName (Set ClassNameDecl)
generateModules =
  Set.toList
    >>> foldMap
          (mdlClass
            >>> either
                  (const mempty)
                  (toClassNameDecl
                      >>> rmap Set.singleton
                      >>> List.singleton))
    >>> Map.fromListWith (<>)

generateModules' :: Array ClassName -> StrMap (Array ClassNameDecl)
generateModules' =
  Set.fromFoldable
    >>> generateModules
    >>> Map.toList
    >>> map (bimap
               (\(ModuleName m) -> m)
               (Set.toList >>> List.toUnfoldable))
    >>> StrMap.fromList
