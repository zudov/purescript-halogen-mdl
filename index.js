const css = require('css');
const cssSelector = require('css-selector-parser');
var selectorParser = new cssSelector.CssSelectorParser()
selectorParser.registerSelectorPseudos('has');
selectorParser.registerNestingOperators('>', '+', '~');
selectorParser.registerAttrEqualityMods('^', '$', '*', '~');
selectorParser.enableSubstitutes();
const fs = require('fs');
const _ = require('lodash');

var content = fs.readFileSync('node_modules/material-design-lite/material.css', { encoding: 'utf8' });
//const content = fs.readFileSync('test.css', { encoding: 'utf8' });

const ast = css.parse(content)

const stylesheet = ast.stylesheet;

const rules
  = _.filter(stylesheet.rules, (rule) => rule.type === 'rule');

const getClassNames
  = (selectors) =>
      _.flatMap
         ( _.filter(selectors, (selector) => _.startsWith(selector, '.'))
         , (selector) =>
              selectorParser.parse(selector)
                .rule
                .classNames
         );

const classNames
  = _.flatMap(rules, (rule) => getClassNames(rule.selectors));

const mdlClassNames
  = _.uniq(_.filter(classNames, (className) => _.startsWith(className, 'mdl')));


const parseBEMClassName
  = (className) =>
      { return { block: _.split(_.split(className, '__')[0], '--')[0]
               , element: _.split(_.split(className, '__')[1], '--')[0]
               , modifier: _.split(className, '--')[1]
               , className
               }
      };

const bemClassNames = _.map(mdlClassNames, parseBEMClassName);

const fixName =
  (name) =>
    { if(isNaN(parseInt(name,10)))
        { return name }
      else
        { return '_' + name }
    }


const mainModule
  = { moduleName: 'MDL'
    , classes:
        _.map
          ( _.filter(bemClassNames, (bem) => bem.element  === ''
                                          && bem.modifier === undefined)
          , (bem) => { return { name: _.camelCase(bem.className.substr(4)), className: bem.className } })
    }

const blockModules
  = _.map( _.groupBy(_.filter(bemClassNames, (bem) => bem.element === '' && bem.modifier !== undefined), 'block')
         , (bemClasses, block) =>
           { return { moduleName: 'MDL.' + _.upperFirst(_.camelCase(block.substr(4)))
                    , classes:
                        _.map( bemClasses
                             , (bem) => { return { className: bem.className
                                                 , name: _.camelCase(bem.modifier)
                                                 }
                                        }
                             )
                    }
           }
         )

const elementModules
  = _.flatMap
         ( _.groupBy(_.filter(bemClassNames, (bem) => bem.element !== '' && bem.modifier !== undefined), 'block')
         , (bemClasses, block) =>
             _.map(_.groupBy(bemClasses, 'element')
                  , (bemClasses, element) =>
                       { return { moduleName: 'MDL.' + _.upperFirst(_.camelCase(block.substr(4)))
                                                     + '.'
                                                     + _.upperFirst(_.camelCase(element))
                                , classNames:
                                    _.map( bemClasses
                                         , (bem) => { return { className: bem.className
                                                             , name: _.camelCase(bem.modifier)
                                                             }
                                                    }
                                         )
                                }
                       }
                  )
         )

const renderClassName =
  (className) =>
`  ${fixName(className.name)} :: ClassName
  ${fixName(className.name)} = className "${className.className}"
`


const renderModule =
  (module) =>
`module ${module.moduleName} where

${_.isEmpty(module.classes) ? "" : "  import Halogen.HTML.Core (ClassName, className)"}

${_.map(module.classes, renderClassName).join('\n')}
`

const renderMainModule =
  (module) =>
`module ${module.moduleName} where
  import Prelude (Unit)
  import Control.Monad.Eff (Eff())

  import DOM (DOM())
  import DOM.HTML.Types (HTMLElement())

  import Halogen.HTML.Core (ClassName, className)
  import Halogen.HTML.Properties.Indexed (IProp(), I)

  class HasMDLInitializer i where
    mdlInitializer :: HTMLElement -> i

  initializer :: ∀ i r. HasMDLInitializer i => IProp (initializer :: I | r) i
  initializer = Halogen.HTML.Properties.Indexed.initializer mdlInitializer

  foreign import upgradeElement :: ∀ eff. HTMLElement -> Eff (dom :: DOM | eff) Unit

${[ 'mdl-js-button'
  , 'mdl-js-checkbox'
  , 'mdl-js-icon-toggle'
  , 'mdl-js-menu'
  , 'mdl-js-progress'
  , 'mdl-js-radio'
  , 'mdl-js-slider'
  , 'mdl-js-spinner'
  , 'mdl-js-switch'
  , 'mdl-js-tabs'
  , 'mdl-js-textfield'
  , 'mdl-js-layout'
  , 'mdl-js-data-table'
  , 'mdl-js-ripple-effect'
  ].map((className) => renderClassName({ className: className, name: _.camelCase(className.substr(4))}))
   .join('\n')}
${_.map(module.classes, renderClassName).join('\n')}
`

const allModules =

console.log(renderMainModule(mainModule))

_.forEach(blockModules, (module) => console.log(renderModule(module)))
_.forEach(elementModules, (module) => console.log(renderModule(module)))
