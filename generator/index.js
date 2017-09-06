const css = require('css');
const cssSelector = require('css-selector-parser');
var selectorParser = new cssSelector.CssSelectorParser()
selectorParser.registerSelectorPseudos('has');
selectorParser.registerNestingOperators('>', '+', '~');
selectorParser.registerAttrEqualityMods('^', '$', '*', '~');
selectorParser.enableSubstitutes();
const path = require('path');
const fs = require('fs');
const fsExt = require('fs-extra');
const _ = require('lodash');

const Generator = require(path.resolve(__dirname, 'output/Generator/index.js'));

var content = fs.readFileSync(path.resolve(__dirname, 'node_modules/material-design-lite/material.css'), { encoding: 'utf8' });
// var content = fs.readFileSync('test.css', { encoding: 'utf8' });

const ast = css.parse(content)

const stylesheet = ast.stylesheet;

const rules
  = _.filter(stylesheet.rules, (rule) => rule.type === 'rule');

const getSelectors
  = (rule) => 
      { if (rule.type === 'rule')
          { return rule.selectors }
        else if (rule.type === 'media')
          { return _.flatMap(rule.rules, getSelectors)
          }
        else
          { return [] }
      }

const selectors
  = _.flatMap(stylesheet.rules, getSelectors)

const classNamesFromParsedSelector
  = (parsed) =>
      { if (parsed.type === 'ruleSet')
          { return classNamesFromParsedSelector(parsed.rule) }
        else if (parsed.type === 'rule')
          { if (parsed.rule && parsed.classNames)
              { return parsed.classNames.concat(classNamesFromParsedSelector(parsed.rule)) }
            else if (parsed.classNames)
              { return parsed.classNames }
            else if (parsed.rule)
              { return classNamesFromParsedSelector(parsed.rule) }
          }
      }


const getClassNames
  = (selectors) =>
      _.flatMap
         ( _.filter(selectors, (selector) => _.startsWith(selector, '.'))
         , (selector) =>
            { if (selector.includes('mdl-cell'))
                { // console.log(selector)
                }
            ; return classNamesFromParsedSelector(selectorParser.parse(selector))
            }
         );

const classNames
  = getClassNames(selectors)

const mdlClassNames
  = _.uniq(_.filter(classNames, (className) => _.startsWith(className, 'mdl')));

const renderClassName =
  (className) =>
`  ${className.name} :: ClassName
  ${className.name} = ClassName "${className.className}"
`
const renderModule =
  (module) =>
`module ${module.moduleName} where

${_.isEmpty(module.classes) ? "" : "  import Halogen.HTML.Core (ClassName(..))"}

${_.map(module.classes, renderClassName).join('\n')}
`

const renderMainModule =
  (module) =>
`module ${module.moduleName} where
  import Prelude (Unit)
  import Control.Monad.Eff (Eff())

  import DOM (DOM())
  import DOM.HTML.Types (HTMLElement())

  import Halogen.HTML.Core (ClassName(..))
  
  foreign import upgradeElement :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Unit

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

const writeModule = (moduleName, moduleCode) =>
  {
    var filePath = path.resolve(__dirname, "../src/" + moduleName.replace("\.", "/") + ".purs");
    fsExt.ensureFileSync(filePath);
    fs.writeFileSync(filePath, moduleCode);
  }

_.forEach(Generator["generateModules'"](mdlClassNames), (classes, moduleName) =>
  {
    if (moduleName === "MDL")
      { 
        writeModule(moduleName, renderMainModule({ moduleName, classes })); 
      }
    else
      { writeModule(moduleName, renderModule({ moduleName, classes })); }
  });



