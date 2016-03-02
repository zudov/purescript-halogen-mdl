module MDL where
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

  jsButton :: ClassName
  jsButton = className "mdl-js-button"

  jsCheckbox :: ClassName
  jsCheckbox = className "mdl-js-checkbox"

  jsIconToggle :: ClassName
  jsIconToggle = className "mdl-js-icon-toggle"

  jsMenu :: ClassName
  jsMenu = className "mdl-js-menu"

  jsProgress :: ClassName
  jsProgress = className "mdl-js-progress"

  jsRadio :: ClassName
  jsRadio = className "mdl-js-radio"

  jsSlider :: ClassName
  jsSlider = className "mdl-js-slider"

  jsSpinner :: ClassName
  jsSpinner = className "mdl-js-spinner"

  jsSwitch :: ClassName
  jsSwitch = className "mdl-js-switch"

  jsTabs :: ClassName
  jsTabs = className "mdl-js-tabs"

  jsTextfield :: ClassName
  jsTextfield = className "mdl-js-textfield"

  jsLayout :: ClassName
  jsLayout = className "mdl-js-layout"

  jsDataTable :: ClassName
  jsDataTable = className "mdl-js-data-table"

  jsRippleEffect :: ClassName
  jsRippleEffect = className "mdl-js-ripple-effect"

  accordion :: ClassName
  accordion = className "mdl-accordion"

  badge :: ClassName
  badge = className "mdl-badge"

  button :: ClassName
  button = className "mdl-button"

  card :: ClassName
  card = className "mdl-card"

  cell :: ClassName
  cell = className "mdl-cell"

  checkbox :: ClassName
  checkbox = className "mdl-checkbox"

  dataTable :: ClassName
  dataTable = className "mdl-data-table"

  dialog :: ClassName
  dialog = className "mdl-dialog"

  dropdownMenu :: ClassName
  dropdownMenu = className "mdl-dropdown-menu"

  grid :: ClassName
  grid = className "mdl-grid"

  iconToggle :: ClassName
  iconToggle = className "mdl-icon-toggle"

  item :: ClassName
  item = className "mdl-item"

  layout :: ClassName
  layout = className "mdl-layout"

  layoutIcon :: ClassName
  layoutIcon = className "mdl-layout-icon"

  layoutSpacer :: ClassName
  layoutSpacer = className "mdl-layout-spacer"

  layoutTitle :: ClassName
  layoutTitle = className "mdl-layout-title"

  list :: ClassName
  list = className "mdl-list"

  logo :: ClassName
  logo = className "mdl-logo"

  megaFooter :: ClassName
  megaFooter = className "mdl-mega-footer"

  menu :: ClassName
  menu = className "mdl-menu"

  miniFooter :: ClassName
  miniFooter = className "mdl-mini-footer"

  navigation :: ClassName
  navigation = className "mdl-navigation"

  progress :: ClassName
  progress = className "mdl-progress"

  radio :: ClassName
  radio = className "mdl-radio"

  ripple :: ClassName
  ripple = className "mdl-ripple"

  slider :: ClassName
  slider = className "mdl-slider"

  snackbar :: ClassName
  snackbar = className "mdl-snackbar"

  spinner :: ClassName
  spinner = className "mdl-spinner"

  switch :: ClassName
  switch = className "mdl-switch"

  tabs :: ClassName
  tabs = className "mdl-tabs"

  textfield :: ClassName
  textfield = className "mdl-textfield"

  tooltip :: ClassName
  tooltip = className "mdl-tooltip"


module MDL.Animation where

  import Halogen.HTML.Core (ClassName, className)

  _default :: ClassName
  _default = className "mdl-animation--default"

  _fastOutLinearIn :: ClassName
  _fastOutLinearIn = className "mdl-animation--fast-out-linear-in"

  _fastOutSlowIn :: ClassName
  _fastOutSlowIn = className "mdl-animation--fast-out-slow-in"

  _linearOutSlowIn :: ClassName
  _linearOutSlowIn = className "mdl-animation--linear-out-slow-in"


module MDL.Badge where

  import Halogen.HTML.Core (ClassName, className)

  _noBackground :: ClassName
  _noBackground = className "mdl-badge--no-background"

  _overlap :: ClassName
  _overlap = className "mdl-badge--overlap"


module MDL.Button where

  import Halogen.HTML.Core (ClassName, className)

  _accent :: ClassName
  _accent = className "mdl-button--accent"

  _colored :: ClassName
  _colored = className "mdl-button--colored"

  _disabled :: ClassName
  _disabled = className "mdl-button--disabled"

  _fab :: ClassName
  _fab = className "mdl-button--fab"

  _icon :: ClassName
  _icon = className "mdl-button--icon"

  _miniFab :: ClassName
  _miniFab = className "mdl-button--mini-fab"

  _miniIcon :: ClassName
  _miniIcon = className "mdl-button--mini-icon"

  _primary :: ClassName
  _primary = className "mdl-button--primary"

  _raised :: ClassName
  _raised = className "mdl-button--raised"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-button__ripple-container"


module MDL.Card where

  import Halogen.HTML.Core (ClassName, className)

  _border :: ClassName
  _border = className "mdl-card--border"

  _expand :: ClassName
  _expand = className "mdl-card--expand"

  actions :: ClassName
  actions = className "mdl-card__actions"

  media :: ClassName
  media = className "mdl-card__media"

  menu :: ClassName
  menu = className "mdl-card__menu"

  subtitleText :: ClassName
  subtitleText = className "mdl-card__subtitle-text"

  supportingText :: ClassName
  supportingText = className "mdl-card__supporting-text"

  title :: ClassName
  title = className "mdl-card__title"

  titleText :: ClassName
  titleText = className "mdl-card__title-text"


module MDL.Cell where

  import Halogen.HTML.Core (ClassName, className)

  _1Col :: ClassName
  _1Col = className "mdl-cell--1-col"

  _1ColDesktop :: ClassName
  _1ColDesktop = className "mdl-cell--1-col-desktop"

  _1ColPhone :: ClassName
  _1ColPhone = className "mdl-cell--1-col-phone"

  _1ColTablet :: ClassName
  _1ColTablet = className "mdl-cell--1-col-tablet"

  _1Offset :: ClassName
  _1Offset = className "mdl-cell--1-offset"

  _1OffsetDesktop :: ClassName
  _1OffsetDesktop = className "mdl-cell--1-offset-desktop"

  _1OffsetPhone :: ClassName
  _1OffsetPhone = className "mdl-cell--1-offset-phone"

  _1OffsetTablet :: ClassName
  _1OffsetTablet = className "mdl-cell--1-offset-tablet"

  _10Col :: ClassName
  _10Col = className "mdl-cell--10-col"

  _10ColDesktop :: ClassName
  _10ColDesktop = className "mdl-cell--10-col-desktop"

  _10ColPhone :: ClassName
  _10ColPhone = className "mdl-cell--10-col-phone"

  _10ColTablet :: ClassName
  _10ColTablet = className "mdl-cell--10-col-tablet"

  _10Offset :: ClassName
  _10Offset = className "mdl-cell--10-offset"

  _10OffsetDesktop :: ClassName
  _10OffsetDesktop = className "mdl-cell--10-offset-desktop"

  _11Col :: ClassName
  _11Col = className "mdl-cell--11-col"

  _11ColDesktop :: ClassName
  _11ColDesktop = className "mdl-cell--11-col-desktop"

  _11ColPhone :: ClassName
  _11ColPhone = className "mdl-cell--11-col-phone"

  _11ColTablet :: ClassName
  _11ColTablet = className "mdl-cell--11-col-tablet"

  _11Offset :: ClassName
  _11Offset = className "mdl-cell--11-offset"

  _11OffsetDesktop :: ClassName
  _11OffsetDesktop = className "mdl-cell--11-offset-desktop"

  _12Col :: ClassName
  _12Col = className "mdl-cell--12-col"

  _12ColDesktop :: ClassName
  _12ColDesktop = className "mdl-cell--12-col-desktop"

  _12ColPhone :: ClassName
  _12ColPhone = className "mdl-cell--12-col-phone"

  _12ColTablet :: ClassName
  _12ColTablet = className "mdl-cell--12-col-tablet"

  _2Col :: ClassName
  _2Col = className "mdl-cell--2-col"

  _2ColDesktop :: ClassName
  _2ColDesktop = className "mdl-cell--2-col-desktop"

  _2ColPhone :: ClassName
  _2ColPhone = className "mdl-cell--2-col-phone"

  _2ColTablet :: ClassName
  _2ColTablet = className "mdl-cell--2-col-tablet"

  _2Offset :: ClassName
  _2Offset = className "mdl-cell--2-offset"

  _2OffsetDesktop :: ClassName
  _2OffsetDesktop = className "mdl-cell--2-offset-desktop"

  _2OffsetPhone :: ClassName
  _2OffsetPhone = className "mdl-cell--2-offset-phone"

  _2OffsetTablet :: ClassName
  _2OffsetTablet = className "mdl-cell--2-offset-tablet"

  _3Col :: ClassName
  _3Col = className "mdl-cell--3-col"

  _3ColDesktop :: ClassName
  _3ColDesktop = className "mdl-cell--3-col-desktop"

  _3ColPhone :: ClassName
  _3ColPhone = className "mdl-cell--3-col-phone"

  _3ColTablet :: ClassName
  _3ColTablet = className "mdl-cell--3-col-tablet"

  _3Offset :: ClassName
  _3Offset = className "mdl-cell--3-offset"

  _3OffsetDesktop :: ClassName
  _3OffsetDesktop = className "mdl-cell--3-offset-desktop"

  _3OffsetPhone :: ClassName
  _3OffsetPhone = className "mdl-cell--3-offset-phone"

  _3OffsetTablet :: ClassName
  _3OffsetTablet = className "mdl-cell--3-offset-tablet"

  _4Col :: ClassName
  _4Col = className "mdl-cell--4-col"

  _4ColDesktop :: ClassName
  _4ColDesktop = className "mdl-cell--4-col-desktop"

  _4ColPhone :: ClassName
  _4ColPhone = className "mdl-cell--4-col-phone"

  _4ColTablet :: ClassName
  _4ColTablet = className "mdl-cell--4-col-tablet"

  _4Offset :: ClassName
  _4Offset = className "mdl-cell--4-offset"

  _4OffsetDesktop :: ClassName
  _4OffsetDesktop = className "mdl-cell--4-offset-desktop"

  _4OffsetTablet :: ClassName
  _4OffsetTablet = className "mdl-cell--4-offset-tablet"

  _5Col :: ClassName
  _5Col = className "mdl-cell--5-col"

  _5ColDesktop :: ClassName
  _5ColDesktop = className "mdl-cell--5-col-desktop"

  _5ColPhone :: ClassName
  _5ColPhone = className "mdl-cell--5-col-phone"

  _5ColTablet :: ClassName
  _5ColTablet = className "mdl-cell--5-col-tablet"

  _5Offset :: ClassName
  _5Offset = className "mdl-cell--5-offset"

  _5OffsetDesktop :: ClassName
  _5OffsetDesktop = className "mdl-cell--5-offset-desktop"

  _5OffsetTablet :: ClassName
  _5OffsetTablet = className "mdl-cell--5-offset-tablet"

  _6Col :: ClassName
  _6Col = className "mdl-cell--6-col"

  _6ColDesktop :: ClassName
  _6ColDesktop = className "mdl-cell--6-col-desktop"

  _6ColPhone :: ClassName
  _6ColPhone = className "mdl-cell--6-col-phone"

  _6ColTablet :: ClassName
  _6ColTablet = className "mdl-cell--6-col-tablet"

  _6Offset :: ClassName
  _6Offset = className "mdl-cell--6-offset"

  _6OffsetDesktop :: ClassName
  _6OffsetDesktop = className "mdl-cell--6-offset-desktop"

  _6OffsetTablet :: ClassName
  _6OffsetTablet = className "mdl-cell--6-offset-tablet"

  _7Col :: ClassName
  _7Col = className "mdl-cell--7-col"

  _7ColDesktop :: ClassName
  _7ColDesktop = className "mdl-cell--7-col-desktop"

  _7ColPhone :: ClassName
  _7ColPhone = className "mdl-cell--7-col-phone"

  _7ColTablet :: ClassName
  _7ColTablet = className "mdl-cell--7-col-tablet"

  _7Offset :: ClassName
  _7Offset = className "mdl-cell--7-offset"

  _7OffsetDesktop :: ClassName
  _7OffsetDesktop = className "mdl-cell--7-offset-desktop"

  _7OffsetTablet :: ClassName
  _7OffsetTablet = className "mdl-cell--7-offset-tablet"

  _8Col :: ClassName
  _8Col = className "mdl-cell--8-col"

  _8ColDesktop :: ClassName
  _8ColDesktop = className "mdl-cell--8-col-desktop"

  _8ColPhone :: ClassName
  _8ColPhone = className "mdl-cell--8-col-phone"

  _8ColTablet :: ClassName
  _8ColTablet = className "mdl-cell--8-col-tablet"

  _8Offset :: ClassName
  _8Offset = className "mdl-cell--8-offset"

  _8OffsetDesktop :: ClassName
  _8OffsetDesktop = className "mdl-cell--8-offset-desktop"

  _9Col :: ClassName
  _9Col = className "mdl-cell--9-col"

  _9ColDesktop :: ClassName
  _9ColDesktop = className "mdl-cell--9-col-desktop"

  _9ColPhone :: ClassName
  _9ColPhone = className "mdl-cell--9-col-phone"

  _9ColTablet :: ClassName
  _9ColTablet = className "mdl-cell--9-col-tablet"

  _9Offset :: ClassName
  _9Offset = className "mdl-cell--9-offset"

  _9OffsetDesktop :: ClassName
  _9OffsetDesktop = className "mdl-cell--9-offset-desktop"

  _bottom :: ClassName
  _bottom = className "mdl-cell--bottom"

  _hideDesktop :: ClassName
  _hideDesktop = className "mdl-cell--hide-desktop"

  _hidePhone :: ClassName
  _hidePhone = className "mdl-cell--hide-phone"

  _hideTablet :: ClassName
  _hideTablet = className "mdl-cell--hide-tablet"

  _middle :: ClassName
  _middle = className "mdl-cell--middle"

  _order1 :: ClassName
  _order1 = className "mdl-cell--order-1"

  _order1Desktop :: ClassName
  _order1Desktop = className "mdl-cell--order-1-desktop"

  _order1Phone :: ClassName
  _order1Phone = className "mdl-cell--order-1-phone"

  _order1Tablet :: ClassName
  _order1Tablet = className "mdl-cell--order-1-tablet"

  _order10 :: ClassName
  _order10 = className "mdl-cell--order-10"

  _order10Desktop :: ClassName
  _order10Desktop = className "mdl-cell--order-10-desktop"

  _order10Phone :: ClassName
  _order10Phone = className "mdl-cell--order-10-phone"

  _order10Tablet :: ClassName
  _order10Tablet = className "mdl-cell--order-10-tablet"

  _order11 :: ClassName
  _order11 = className "mdl-cell--order-11"

  _order11Desktop :: ClassName
  _order11Desktop = className "mdl-cell--order-11-desktop"

  _order11Phone :: ClassName
  _order11Phone = className "mdl-cell--order-11-phone"

  _order11Tablet :: ClassName
  _order11Tablet = className "mdl-cell--order-11-tablet"

  _order12 :: ClassName
  _order12 = className "mdl-cell--order-12"

  _order12Desktop :: ClassName
  _order12Desktop = className "mdl-cell--order-12-desktop"

  _order12Phone :: ClassName
  _order12Phone = className "mdl-cell--order-12-phone"

  _order12Tablet :: ClassName
  _order12Tablet = className "mdl-cell--order-12-tablet"

  _order2 :: ClassName
  _order2 = className "mdl-cell--order-2"

  _order2Desktop :: ClassName
  _order2Desktop = className "mdl-cell--order-2-desktop"

  _order2Phone :: ClassName
  _order2Phone = className "mdl-cell--order-2-phone"

  _order2Tablet :: ClassName
  _order2Tablet = className "mdl-cell--order-2-tablet"

  _order3 :: ClassName
  _order3 = className "mdl-cell--order-3"

  _order3Desktop :: ClassName
  _order3Desktop = className "mdl-cell--order-3-desktop"

  _order3Phone :: ClassName
  _order3Phone = className "mdl-cell--order-3-phone"

  _order3Tablet :: ClassName
  _order3Tablet = className "mdl-cell--order-3-tablet"

  _order4 :: ClassName
  _order4 = className "mdl-cell--order-4"

  _order4Desktop :: ClassName
  _order4Desktop = className "mdl-cell--order-4-desktop"

  _order4Phone :: ClassName
  _order4Phone = className "mdl-cell--order-4-phone"

  _order4Tablet :: ClassName
  _order4Tablet = className "mdl-cell--order-4-tablet"

  _order5 :: ClassName
  _order5 = className "mdl-cell--order-5"

  _order5Desktop :: ClassName
  _order5Desktop = className "mdl-cell--order-5-desktop"

  _order5Phone :: ClassName
  _order5Phone = className "mdl-cell--order-5-phone"

  _order5Tablet :: ClassName
  _order5Tablet = className "mdl-cell--order-5-tablet"

  _order6 :: ClassName
  _order6 = className "mdl-cell--order-6"

  _order6Desktop :: ClassName
  _order6Desktop = className "mdl-cell--order-6-desktop"

  _order6Phone :: ClassName
  _order6Phone = className "mdl-cell--order-6-phone"

  _order6Tablet :: ClassName
  _order6Tablet = className "mdl-cell--order-6-tablet"

  _order7 :: ClassName
  _order7 = className "mdl-cell--order-7"

  _order7Desktop :: ClassName
  _order7Desktop = className "mdl-cell--order-7-desktop"

  _order7Phone :: ClassName
  _order7Phone = className "mdl-cell--order-7-phone"

  _order7Tablet :: ClassName
  _order7Tablet = className "mdl-cell--order-7-tablet"

  _order8 :: ClassName
  _order8 = className "mdl-cell--order-8"

  _order8Desktop :: ClassName
  _order8Desktop = className "mdl-cell--order-8-desktop"

  _order8Phone :: ClassName
  _order8Phone = className "mdl-cell--order-8-phone"

  _order8Tablet :: ClassName
  _order8Tablet = className "mdl-cell--order-8-tablet"

  _order9 :: ClassName
  _order9 = className "mdl-cell--order-9"

  _order9Desktop :: ClassName
  _order9Desktop = className "mdl-cell--order-9-desktop"

  _order9Phone :: ClassName
  _order9Phone = className "mdl-cell--order-9-phone"

  _order9Tablet :: ClassName
  _order9Tablet = className "mdl-cell--order-9-tablet"

  _stretch :: ClassName
  _stretch = className "mdl-cell--stretch"

  _top :: ClassName
  _top = className "mdl-cell--top"


module MDL.Checkbox where

  import Halogen.HTML.Core (ClassName, className)

  boxOutline :: ClassName
  boxOutline = className "mdl-checkbox__box-outline"

  focusHelper :: ClassName
  focusHelper = className "mdl-checkbox__focus-helper"

  input :: ClassName
  input = className "mdl-checkbox__input"

  label :: ClassName
  label = className "mdl-checkbox__label"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-checkbox__ripple-container"

  tickOutline :: ClassName
  tickOutline = className "mdl-checkbox__tick-outline"


module MDL.Color where

  import Halogen.HTML.Core (ClassName, className)

  _accent :: ClassName
  _accent = className "mdl-color--accent"

  _accentContrast :: ClassName
  _accentContrast = className "mdl-color--accent-contrast"

  _amber :: ClassName
  _amber = className "mdl-color--amber"

  _amber100 :: ClassName
  _amber100 = className "mdl-color--amber-100"

  _amber200 :: ClassName
  _amber200 = className "mdl-color--amber-200"

  _amber300 :: ClassName
  _amber300 = className "mdl-color--amber-300"

  _amber400 :: ClassName
  _amber400 = className "mdl-color--amber-400"

  _amber50 :: ClassName
  _amber50 = className "mdl-color--amber-50"

  _amber500 :: ClassName
  _amber500 = className "mdl-color--amber-500"

  _amber600 :: ClassName
  _amber600 = className "mdl-color--amber-600"

  _amber700 :: ClassName
  _amber700 = className "mdl-color--amber-700"

  _amber800 :: ClassName
  _amber800 = className "mdl-color--amber-800"

  _amber900 :: ClassName
  _amber900 = className "mdl-color--amber-900"

  _amberA100 :: ClassName
  _amberA100 = className "mdl-color--amber-A100"

  _amberA200 :: ClassName
  _amberA200 = className "mdl-color--amber-A200"

  _amberA400 :: ClassName
  _amberA400 = className "mdl-color--amber-A400"

  _amberA700 :: ClassName
  _amberA700 = className "mdl-color--amber-A700"

  _black :: ClassName
  _black = className "mdl-color--black"

  _blue :: ClassName
  _blue = className "mdl-color--blue"

  _blue100 :: ClassName
  _blue100 = className "mdl-color--blue-100"

  _blue200 :: ClassName
  _blue200 = className "mdl-color--blue-200"

  _blue300 :: ClassName
  _blue300 = className "mdl-color--blue-300"

  _blue400 :: ClassName
  _blue400 = className "mdl-color--blue-400"

  _blue50 :: ClassName
  _blue50 = className "mdl-color--blue-50"

  _blue500 :: ClassName
  _blue500 = className "mdl-color--blue-500"

  _blue600 :: ClassName
  _blue600 = className "mdl-color--blue-600"

  _blue700 :: ClassName
  _blue700 = className "mdl-color--blue-700"

  _blue800 :: ClassName
  _blue800 = className "mdl-color--blue-800"

  _blue900 :: ClassName
  _blue900 = className "mdl-color--blue-900"

  _blueA100 :: ClassName
  _blueA100 = className "mdl-color--blue-A100"

  _blueA200 :: ClassName
  _blueA200 = className "mdl-color--blue-A200"

  _blueA400 :: ClassName
  _blueA400 = className "mdl-color--blue-A400"

  _blueA700 :: ClassName
  _blueA700 = className "mdl-color--blue-A700"

  _blueGrey :: ClassName
  _blueGrey = className "mdl-color--blue-grey"

  _blueGrey100 :: ClassName
  _blueGrey100 = className "mdl-color--blue-grey-100"

  _blueGrey200 :: ClassName
  _blueGrey200 = className "mdl-color--blue-grey-200"

  _blueGrey300 :: ClassName
  _blueGrey300 = className "mdl-color--blue-grey-300"

  _blueGrey400 :: ClassName
  _blueGrey400 = className "mdl-color--blue-grey-400"

  _blueGrey50 :: ClassName
  _blueGrey50 = className "mdl-color--blue-grey-50"

  _blueGrey500 :: ClassName
  _blueGrey500 = className "mdl-color--blue-grey-500"

  _blueGrey600 :: ClassName
  _blueGrey600 = className "mdl-color--blue-grey-600"

  _blueGrey700 :: ClassName
  _blueGrey700 = className "mdl-color--blue-grey-700"

  _blueGrey800 :: ClassName
  _blueGrey800 = className "mdl-color--blue-grey-800"

  _blueGrey900 :: ClassName
  _blueGrey900 = className "mdl-color--blue-grey-900"

  _brown :: ClassName
  _brown = className "mdl-color--brown"

  _brown100 :: ClassName
  _brown100 = className "mdl-color--brown-100"

  _brown200 :: ClassName
  _brown200 = className "mdl-color--brown-200"

  _brown300 :: ClassName
  _brown300 = className "mdl-color--brown-300"

  _brown400 :: ClassName
  _brown400 = className "mdl-color--brown-400"

  _brown50 :: ClassName
  _brown50 = className "mdl-color--brown-50"

  _brown500 :: ClassName
  _brown500 = className "mdl-color--brown-500"

  _brown600 :: ClassName
  _brown600 = className "mdl-color--brown-600"

  _brown700 :: ClassName
  _brown700 = className "mdl-color--brown-700"

  _brown800 :: ClassName
  _brown800 = className "mdl-color--brown-800"

  _brown900 :: ClassName
  _brown900 = className "mdl-color--brown-900"

  _cyan :: ClassName
  _cyan = className "mdl-color--cyan"

  _cyan100 :: ClassName
  _cyan100 = className "mdl-color--cyan-100"

  _cyan200 :: ClassName
  _cyan200 = className "mdl-color--cyan-200"

  _cyan300 :: ClassName
  _cyan300 = className "mdl-color--cyan-300"

  _cyan400 :: ClassName
  _cyan400 = className "mdl-color--cyan-400"

  _cyan50 :: ClassName
  _cyan50 = className "mdl-color--cyan-50"

  _cyan500 :: ClassName
  _cyan500 = className "mdl-color--cyan-500"

  _cyan600 :: ClassName
  _cyan600 = className "mdl-color--cyan-600"

  _cyan700 :: ClassName
  _cyan700 = className "mdl-color--cyan-700"

  _cyan800 :: ClassName
  _cyan800 = className "mdl-color--cyan-800"

  _cyan900 :: ClassName
  _cyan900 = className "mdl-color--cyan-900"

  _cyanA100 :: ClassName
  _cyanA100 = className "mdl-color--cyan-A100"

  _cyanA200 :: ClassName
  _cyanA200 = className "mdl-color--cyan-A200"

  _cyanA400 :: ClassName
  _cyanA400 = className "mdl-color--cyan-A400"

  _cyanA700 :: ClassName
  _cyanA700 = className "mdl-color--cyan-A700"

  _deepOrange :: ClassName
  _deepOrange = className "mdl-color--deep-orange"

  _deepOrange100 :: ClassName
  _deepOrange100 = className "mdl-color--deep-orange-100"

  _deepOrange200 :: ClassName
  _deepOrange200 = className "mdl-color--deep-orange-200"

  _deepOrange300 :: ClassName
  _deepOrange300 = className "mdl-color--deep-orange-300"

  _deepOrange400 :: ClassName
  _deepOrange400 = className "mdl-color--deep-orange-400"

  _deepOrange50 :: ClassName
  _deepOrange50 = className "mdl-color--deep-orange-50"

  _deepOrange500 :: ClassName
  _deepOrange500 = className "mdl-color--deep-orange-500"

  _deepOrange600 :: ClassName
  _deepOrange600 = className "mdl-color--deep-orange-600"

  _deepOrange700 :: ClassName
  _deepOrange700 = className "mdl-color--deep-orange-700"

  _deepOrange800 :: ClassName
  _deepOrange800 = className "mdl-color--deep-orange-800"

  _deepOrange900 :: ClassName
  _deepOrange900 = className "mdl-color--deep-orange-900"

  _deepOrangeA100 :: ClassName
  _deepOrangeA100 = className "mdl-color--deep-orange-A100"

  _deepOrangeA200 :: ClassName
  _deepOrangeA200 = className "mdl-color--deep-orange-A200"

  _deepOrangeA400 :: ClassName
  _deepOrangeA400 = className "mdl-color--deep-orange-A400"

  _deepOrangeA700 :: ClassName
  _deepOrangeA700 = className "mdl-color--deep-orange-A700"

  _deepPurple :: ClassName
  _deepPurple = className "mdl-color--deep-purple"

  _deepPurple100 :: ClassName
  _deepPurple100 = className "mdl-color--deep-purple-100"

  _deepPurple200 :: ClassName
  _deepPurple200 = className "mdl-color--deep-purple-200"

  _deepPurple300 :: ClassName
  _deepPurple300 = className "mdl-color--deep-purple-300"

  _deepPurple400 :: ClassName
  _deepPurple400 = className "mdl-color--deep-purple-400"

  _deepPurple50 :: ClassName
  _deepPurple50 = className "mdl-color--deep-purple-50"

  _deepPurple500 :: ClassName
  _deepPurple500 = className "mdl-color--deep-purple-500"

  _deepPurple600 :: ClassName
  _deepPurple600 = className "mdl-color--deep-purple-600"

  _deepPurple700 :: ClassName
  _deepPurple700 = className "mdl-color--deep-purple-700"

  _deepPurple800 :: ClassName
  _deepPurple800 = className "mdl-color--deep-purple-800"

  _deepPurple900 :: ClassName
  _deepPurple900 = className "mdl-color--deep-purple-900"

  _deepPurpleA100 :: ClassName
  _deepPurpleA100 = className "mdl-color--deep-purple-A100"

  _deepPurpleA200 :: ClassName
  _deepPurpleA200 = className "mdl-color--deep-purple-A200"

  _deepPurpleA400 :: ClassName
  _deepPurpleA400 = className "mdl-color--deep-purple-A400"

  _deepPurpleA700 :: ClassName
  _deepPurpleA700 = className "mdl-color--deep-purple-A700"

  _green :: ClassName
  _green = className "mdl-color--green"

  _green100 :: ClassName
  _green100 = className "mdl-color--green-100"

  _green200 :: ClassName
  _green200 = className "mdl-color--green-200"

  _green300 :: ClassName
  _green300 = className "mdl-color--green-300"

  _green400 :: ClassName
  _green400 = className "mdl-color--green-400"

  _green50 :: ClassName
  _green50 = className "mdl-color--green-50"

  _green500 :: ClassName
  _green500 = className "mdl-color--green-500"

  _green600 :: ClassName
  _green600 = className "mdl-color--green-600"

  _green700 :: ClassName
  _green700 = className "mdl-color--green-700"

  _green800 :: ClassName
  _green800 = className "mdl-color--green-800"

  _green900 :: ClassName
  _green900 = className "mdl-color--green-900"

  _greenA100 :: ClassName
  _greenA100 = className "mdl-color--green-A100"

  _greenA200 :: ClassName
  _greenA200 = className "mdl-color--green-A200"

  _greenA400 :: ClassName
  _greenA400 = className "mdl-color--green-A400"

  _greenA700 :: ClassName
  _greenA700 = className "mdl-color--green-A700"

  _grey :: ClassName
  _grey = className "mdl-color--grey"

  _grey100 :: ClassName
  _grey100 = className "mdl-color--grey-100"

  _grey200 :: ClassName
  _grey200 = className "mdl-color--grey-200"

  _grey300 :: ClassName
  _grey300 = className "mdl-color--grey-300"

  _grey400 :: ClassName
  _grey400 = className "mdl-color--grey-400"

  _grey50 :: ClassName
  _grey50 = className "mdl-color--grey-50"

  _grey500 :: ClassName
  _grey500 = className "mdl-color--grey-500"

  _grey600 :: ClassName
  _grey600 = className "mdl-color--grey-600"

  _grey700 :: ClassName
  _grey700 = className "mdl-color--grey-700"

  _grey800 :: ClassName
  _grey800 = className "mdl-color--grey-800"

  _grey900 :: ClassName
  _grey900 = className "mdl-color--grey-900"

  _indigo :: ClassName
  _indigo = className "mdl-color--indigo"

  _indigo100 :: ClassName
  _indigo100 = className "mdl-color--indigo-100"

  _indigo200 :: ClassName
  _indigo200 = className "mdl-color--indigo-200"

  _indigo300 :: ClassName
  _indigo300 = className "mdl-color--indigo-300"

  _indigo400 :: ClassName
  _indigo400 = className "mdl-color--indigo-400"

  _indigo50 :: ClassName
  _indigo50 = className "mdl-color--indigo-50"

  _indigo500 :: ClassName
  _indigo500 = className "mdl-color--indigo-500"

  _indigo600 :: ClassName
  _indigo600 = className "mdl-color--indigo-600"

  _indigo700 :: ClassName
  _indigo700 = className "mdl-color--indigo-700"

  _indigo800 :: ClassName
  _indigo800 = className "mdl-color--indigo-800"

  _indigo900 :: ClassName
  _indigo900 = className "mdl-color--indigo-900"

  _indigoA100 :: ClassName
  _indigoA100 = className "mdl-color--indigo-A100"

  _indigoA200 :: ClassName
  _indigoA200 = className "mdl-color--indigo-A200"

  _indigoA400 :: ClassName
  _indigoA400 = className "mdl-color--indigo-A400"

  _indigoA700 :: ClassName
  _indigoA700 = className "mdl-color--indigo-A700"

  _lightBlue :: ClassName
  _lightBlue = className "mdl-color--light-blue"

  _lightBlue100 :: ClassName
  _lightBlue100 = className "mdl-color--light-blue-100"

  _lightBlue200 :: ClassName
  _lightBlue200 = className "mdl-color--light-blue-200"

  _lightBlue300 :: ClassName
  _lightBlue300 = className "mdl-color--light-blue-300"

  _lightBlue400 :: ClassName
  _lightBlue400 = className "mdl-color--light-blue-400"

  _lightBlue50 :: ClassName
  _lightBlue50 = className "mdl-color--light-blue-50"

  _lightBlue500 :: ClassName
  _lightBlue500 = className "mdl-color--light-blue-500"

  _lightBlue600 :: ClassName
  _lightBlue600 = className "mdl-color--light-blue-600"

  _lightBlue700 :: ClassName
  _lightBlue700 = className "mdl-color--light-blue-700"

  _lightBlue800 :: ClassName
  _lightBlue800 = className "mdl-color--light-blue-800"

  _lightBlue900 :: ClassName
  _lightBlue900 = className "mdl-color--light-blue-900"

  _lightBlueA100 :: ClassName
  _lightBlueA100 = className "mdl-color--light-blue-A100"

  _lightBlueA200 :: ClassName
  _lightBlueA200 = className "mdl-color--light-blue-A200"

  _lightBlueA400 :: ClassName
  _lightBlueA400 = className "mdl-color--light-blue-A400"

  _lightBlueA700 :: ClassName
  _lightBlueA700 = className "mdl-color--light-blue-A700"

  _lightGreen :: ClassName
  _lightGreen = className "mdl-color--light-green"

  _lightGreen100 :: ClassName
  _lightGreen100 = className "mdl-color--light-green-100"

  _lightGreen200 :: ClassName
  _lightGreen200 = className "mdl-color--light-green-200"

  _lightGreen300 :: ClassName
  _lightGreen300 = className "mdl-color--light-green-300"

  _lightGreen400 :: ClassName
  _lightGreen400 = className "mdl-color--light-green-400"

  _lightGreen50 :: ClassName
  _lightGreen50 = className "mdl-color--light-green-50"

  _lightGreen500 :: ClassName
  _lightGreen500 = className "mdl-color--light-green-500"

  _lightGreen600 :: ClassName
  _lightGreen600 = className "mdl-color--light-green-600"

  _lightGreen700 :: ClassName
  _lightGreen700 = className "mdl-color--light-green-700"

  _lightGreen800 :: ClassName
  _lightGreen800 = className "mdl-color--light-green-800"

  _lightGreen900 :: ClassName
  _lightGreen900 = className "mdl-color--light-green-900"

  _lightGreenA100 :: ClassName
  _lightGreenA100 = className "mdl-color--light-green-A100"

  _lightGreenA200 :: ClassName
  _lightGreenA200 = className "mdl-color--light-green-A200"

  _lightGreenA400 :: ClassName
  _lightGreenA400 = className "mdl-color--light-green-A400"

  _lightGreenA700 :: ClassName
  _lightGreenA700 = className "mdl-color--light-green-A700"

  _lime :: ClassName
  _lime = className "mdl-color--lime"

  _lime100 :: ClassName
  _lime100 = className "mdl-color--lime-100"

  _lime200 :: ClassName
  _lime200 = className "mdl-color--lime-200"

  _lime300 :: ClassName
  _lime300 = className "mdl-color--lime-300"

  _lime400 :: ClassName
  _lime400 = className "mdl-color--lime-400"

  _lime50 :: ClassName
  _lime50 = className "mdl-color--lime-50"

  _lime500 :: ClassName
  _lime500 = className "mdl-color--lime-500"

  _lime600 :: ClassName
  _lime600 = className "mdl-color--lime-600"

  _lime700 :: ClassName
  _lime700 = className "mdl-color--lime-700"

  _lime800 :: ClassName
  _lime800 = className "mdl-color--lime-800"

  _lime900 :: ClassName
  _lime900 = className "mdl-color--lime-900"

  _limeA100 :: ClassName
  _limeA100 = className "mdl-color--lime-A100"

  _limeA200 :: ClassName
  _limeA200 = className "mdl-color--lime-A200"

  _limeA400 :: ClassName
  _limeA400 = className "mdl-color--lime-A400"

  _limeA700 :: ClassName
  _limeA700 = className "mdl-color--lime-A700"

  _orange :: ClassName
  _orange = className "mdl-color--orange"

  _orange100 :: ClassName
  _orange100 = className "mdl-color--orange-100"

  _orange200 :: ClassName
  _orange200 = className "mdl-color--orange-200"

  _orange300 :: ClassName
  _orange300 = className "mdl-color--orange-300"

  _orange400 :: ClassName
  _orange400 = className "mdl-color--orange-400"

  _orange50 :: ClassName
  _orange50 = className "mdl-color--orange-50"

  _orange500 :: ClassName
  _orange500 = className "mdl-color--orange-500"

  _orange600 :: ClassName
  _orange600 = className "mdl-color--orange-600"

  _orange700 :: ClassName
  _orange700 = className "mdl-color--orange-700"

  _orange800 :: ClassName
  _orange800 = className "mdl-color--orange-800"

  _orange900 :: ClassName
  _orange900 = className "mdl-color--orange-900"

  _orangeA100 :: ClassName
  _orangeA100 = className "mdl-color--orange-A100"

  _orangeA200 :: ClassName
  _orangeA200 = className "mdl-color--orange-A200"

  _orangeA400 :: ClassName
  _orangeA400 = className "mdl-color--orange-A400"

  _orangeA700 :: ClassName
  _orangeA700 = className "mdl-color--orange-A700"

  _pink :: ClassName
  _pink = className "mdl-color--pink"

  _pink100 :: ClassName
  _pink100 = className "mdl-color--pink-100"

  _pink200 :: ClassName
  _pink200 = className "mdl-color--pink-200"

  _pink300 :: ClassName
  _pink300 = className "mdl-color--pink-300"

  _pink400 :: ClassName
  _pink400 = className "mdl-color--pink-400"

  _pink50 :: ClassName
  _pink50 = className "mdl-color--pink-50"

  _pink500 :: ClassName
  _pink500 = className "mdl-color--pink-500"

  _pink600 :: ClassName
  _pink600 = className "mdl-color--pink-600"

  _pink700 :: ClassName
  _pink700 = className "mdl-color--pink-700"

  _pink800 :: ClassName
  _pink800 = className "mdl-color--pink-800"

  _pink900 :: ClassName
  _pink900 = className "mdl-color--pink-900"

  _pinkA100 :: ClassName
  _pinkA100 = className "mdl-color--pink-A100"

  _pinkA200 :: ClassName
  _pinkA200 = className "mdl-color--pink-A200"

  _pinkA400 :: ClassName
  _pinkA400 = className "mdl-color--pink-A400"

  _pinkA700 :: ClassName
  _pinkA700 = className "mdl-color--pink-A700"

  _primary :: ClassName
  _primary = className "mdl-color--primary"

  _primaryContrast :: ClassName
  _primaryContrast = className "mdl-color--primary-contrast"

  _primaryDark :: ClassName
  _primaryDark = className "mdl-color--primary-dark"

  _purple :: ClassName
  _purple = className "mdl-color--purple"

  _purple100 :: ClassName
  _purple100 = className "mdl-color--purple-100"

  _purple200 :: ClassName
  _purple200 = className "mdl-color--purple-200"

  _purple300 :: ClassName
  _purple300 = className "mdl-color--purple-300"

  _purple400 :: ClassName
  _purple400 = className "mdl-color--purple-400"

  _purple50 :: ClassName
  _purple50 = className "mdl-color--purple-50"

  _purple500 :: ClassName
  _purple500 = className "mdl-color--purple-500"

  _purple600 :: ClassName
  _purple600 = className "mdl-color--purple-600"

  _purple700 :: ClassName
  _purple700 = className "mdl-color--purple-700"

  _purple800 :: ClassName
  _purple800 = className "mdl-color--purple-800"

  _purple900 :: ClassName
  _purple900 = className "mdl-color--purple-900"

  _purpleA100 :: ClassName
  _purpleA100 = className "mdl-color--purple-A100"

  _purpleA200 :: ClassName
  _purpleA200 = className "mdl-color--purple-A200"

  _purpleA400 :: ClassName
  _purpleA400 = className "mdl-color--purple-A400"

  _purpleA700 :: ClassName
  _purpleA700 = className "mdl-color--purple-A700"

  _red :: ClassName
  _red = className "mdl-color--red"

  _red100 :: ClassName
  _red100 = className "mdl-color--red-100"

  _red200 :: ClassName
  _red200 = className "mdl-color--red-200"

  _red300 :: ClassName
  _red300 = className "mdl-color--red-300"

  _red400 :: ClassName
  _red400 = className "mdl-color--red-400"

  _red50 :: ClassName
  _red50 = className "mdl-color--red-50"

  _red500 :: ClassName
  _red500 = className "mdl-color--red-500"

  _red600 :: ClassName
  _red600 = className "mdl-color--red-600"

  _red700 :: ClassName
  _red700 = className "mdl-color--red-700"

  _red800 :: ClassName
  _red800 = className "mdl-color--red-800"

  _red900 :: ClassName
  _red900 = className "mdl-color--red-900"

  _redA100 :: ClassName
  _redA100 = className "mdl-color--red-A100"

  _redA200 :: ClassName
  _redA200 = className "mdl-color--red-A200"

  _redA400 :: ClassName
  _redA400 = className "mdl-color--red-A400"

  _redA700 :: ClassName
  _redA700 = className "mdl-color--red-A700"

  _teal :: ClassName
  _teal = className "mdl-color--teal"

  _teal100 :: ClassName
  _teal100 = className "mdl-color--teal-100"

  _teal200 :: ClassName
  _teal200 = className "mdl-color--teal-200"

  _teal300 :: ClassName
  _teal300 = className "mdl-color--teal-300"

  _teal400 :: ClassName
  _teal400 = className "mdl-color--teal-400"

  _teal50 :: ClassName
  _teal50 = className "mdl-color--teal-50"

  _teal500 :: ClassName
  _teal500 = className "mdl-color--teal-500"

  _teal600 :: ClassName
  _teal600 = className "mdl-color--teal-600"

  _teal700 :: ClassName
  _teal700 = className "mdl-color--teal-700"

  _teal800 :: ClassName
  _teal800 = className "mdl-color--teal-800"

  _teal900 :: ClassName
  _teal900 = className "mdl-color--teal-900"

  _tealA100 :: ClassName
  _tealA100 = className "mdl-color--teal-A100"

  _tealA200 :: ClassName
  _tealA200 = className "mdl-color--teal-A200"

  _tealA400 :: ClassName
  _tealA400 = className "mdl-color--teal-A400"

  _tealA700 :: ClassName
  _tealA700 = className "mdl-color--teal-A700"

  _white :: ClassName
  _white = className "mdl-color--white"

  _yellow :: ClassName
  _yellow = className "mdl-color--yellow"

  _yellow100 :: ClassName
  _yellow100 = className "mdl-color--yellow-100"

  _yellow200 :: ClassName
  _yellow200 = className "mdl-color--yellow-200"

  _yellow300 :: ClassName
  _yellow300 = className "mdl-color--yellow-300"

  _yellow400 :: ClassName
  _yellow400 = className "mdl-color--yellow-400"

  _yellow50 :: ClassName
  _yellow50 = className "mdl-color--yellow-50"

  _yellow500 :: ClassName
  _yellow500 = className "mdl-color--yellow-500"

  _yellow600 :: ClassName
  _yellow600 = className "mdl-color--yellow-600"

  _yellow700 :: ClassName
  _yellow700 = className "mdl-color--yellow-700"

  _yellow800 :: ClassName
  _yellow800 = className "mdl-color--yellow-800"

  _yellow900 :: ClassName
  _yellow900 = className "mdl-color--yellow-900"

  _yellowA100 :: ClassName
  _yellowA100 = className "mdl-color--yellow-A100"

  _yellowA200 :: ClassName
  _yellowA200 = className "mdl-color--yellow-A200"

  _yellowA400 :: ClassName
  _yellowA400 = className "mdl-color--yellow-A400"

  _yellowA700 :: ClassName
  _yellowA700 = className "mdl-color--yellow-A700"


module MDL.ColorText where

  import Halogen.HTML.Core (ClassName, className)

  _accent :: ClassName
  _accent = className "mdl-color-text--accent"

  _accentContrast :: ClassName
  _accentContrast = className "mdl-color-text--accent-contrast"

  _amber :: ClassName
  _amber = className "mdl-color-text--amber"

  _amber100 :: ClassName
  _amber100 = className "mdl-color-text--amber-100"

  _amber200 :: ClassName
  _amber200 = className "mdl-color-text--amber-200"

  _amber300 :: ClassName
  _amber300 = className "mdl-color-text--amber-300"

  _amber400 :: ClassName
  _amber400 = className "mdl-color-text--amber-400"

  _amber50 :: ClassName
  _amber50 = className "mdl-color-text--amber-50"

  _amber500 :: ClassName
  _amber500 = className "mdl-color-text--amber-500"

  _amber600 :: ClassName
  _amber600 = className "mdl-color-text--amber-600"

  _amber700 :: ClassName
  _amber700 = className "mdl-color-text--amber-700"

  _amber800 :: ClassName
  _amber800 = className "mdl-color-text--amber-800"

  _amber900 :: ClassName
  _amber900 = className "mdl-color-text--amber-900"

  _amberA100 :: ClassName
  _amberA100 = className "mdl-color-text--amber-A100"

  _amberA200 :: ClassName
  _amberA200 = className "mdl-color-text--amber-A200"

  _amberA400 :: ClassName
  _amberA400 = className "mdl-color-text--amber-A400"

  _amberA700 :: ClassName
  _amberA700 = className "mdl-color-text--amber-A700"

  _black :: ClassName
  _black = className "mdl-color-text--black"

  _blue :: ClassName
  _blue = className "mdl-color-text--blue"

  _blue100 :: ClassName
  _blue100 = className "mdl-color-text--blue-100"

  _blue200 :: ClassName
  _blue200 = className "mdl-color-text--blue-200"

  _blue300 :: ClassName
  _blue300 = className "mdl-color-text--blue-300"

  _blue400 :: ClassName
  _blue400 = className "mdl-color-text--blue-400"

  _blue50 :: ClassName
  _blue50 = className "mdl-color-text--blue-50"

  _blue500 :: ClassName
  _blue500 = className "mdl-color-text--blue-500"

  _blue600 :: ClassName
  _blue600 = className "mdl-color-text--blue-600"

  _blue700 :: ClassName
  _blue700 = className "mdl-color-text--blue-700"

  _blue800 :: ClassName
  _blue800 = className "mdl-color-text--blue-800"

  _blue900 :: ClassName
  _blue900 = className "mdl-color-text--blue-900"

  _blueA100 :: ClassName
  _blueA100 = className "mdl-color-text--blue-A100"

  _blueA200 :: ClassName
  _blueA200 = className "mdl-color-text--blue-A200"

  _blueA400 :: ClassName
  _blueA400 = className "mdl-color-text--blue-A400"

  _blueA700 :: ClassName
  _blueA700 = className "mdl-color-text--blue-A700"

  _blueGrey :: ClassName
  _blueGrey = className "mdl-color-text--blue-grey"

  _blueGrey100 :: ClassName
  _blueGrey100 = className "mdl-color-text--blue-grey-100"

  _blueGrey200 :: ClassName
  _blueGrey200 = className "mdl-color-text--blue-grey-200"

  _blueGrey300 :: ClassName
  _blueGrey300 = className "mdl-color-text--blue-grey-300"

  _blueGrey400 :: ClassName
  _blueGrey400 = className "mdl-color-text--blue-grey-400"

  _blueGrey50 :: ClassName
  _blueGrey50 = className "mdl-color-text--blue-grey-50"

  _blueGrey500 :: ClassName
  _blueGrey500 = className "mdl-color-text--blue-grey-500"

  _blueGrey600 :: ClassName
  _blueGrey600 = className "mdl-color-text--blue-grey-600"

  _blueGrey700 :: ClassName
  _blueGrey700 = className "mdl-color-text--blue-grey-700"

  _blueGrey800 :: ClassName
  _blueGrey800 = className "mdl-color-text--blue-grey-800"

  _blueGrey900 :: ClassName
  _blueGrey900 = className "mdl-color-text--blue-grey-900"

  _brown :: ClassName
  _brown = className "mdl-color-text--brown"

  _brown100 :: ClassName
  _brown100 = className "mdl-color-text--brown-100"

  _brown200 :: ClassName
  _brown200 = className "mdl-color-text--brown-200"

  _brown300 :: ClassName
  _brown300 = className "mdl-color-text--brown-300"

  _brown400 :: ClassName
  _brown400 = className "mdl-color-text--brown-400"

  _brown50 :: ClassName
  _brown50 = className "mdl-color-text--brown-50"

  _brown500 :: ClassName
  _brown500 = className "mdl-color-text--brown-500"

  _brown600 :: ClassName
  _brown600 = className "mdl-color-text--brown-600"

  _brown700 :: ClassName
  _brown700 = className "mdl-color-text--brown-700"

  _brown800 :: ClassName
  _brown800 = className "mdl-color-text--brown-800"

  _brown900 :: ClassName
  _brown900 = className "mdl-color-text--brown-900"

  _cyan :: ClassName
  _cyan = className "mdl-color-text--cyan"

  _cyan100 :: ClassName
  _cyan100 = className "mdl-color-text--cyan-100"

  _cyan200 :: ClassName
  _cyan200 = className "mdl-color-text--cyan-200"

  _cyan300 :: ClassName
  _cyan300 = className "mdl-color-text--cyan-300"

  _cyan400 :: ClassName
  _cyan400 = className "mdl-color-text--cyan-400"

  _cyan50 :: ClassName
  _cyan50 = className "mdl-color-text--cyan-50"

  _cyan500 :: ClassName
  _cyan500 = className "mdl-color-text--cyan-500"

  _cyan600 :: ClassName
  _cyan600 = className "mdl-color-text--cyan-600"

  _cyan700 :: ClassName
  _cyan700 = className "mdl-color-text--cyan-700"

  _cyan800 :: ClassName
  _cyan800 = className "mdl-color-text--cyan-800"

  _cyan900 :: ClassName
  _cyan900 = className "mdl-color-text--cyan-900"

  _cyanA100 :: ClassName
  _cyanA100 = className "mdl-color-text--cyan-A100"

  _cyanA200 :: ClassName
  _cyanA200 = className "mdl-color-text--cyan-A200"

  _cyanA400 :: ClassName
  _cyanA400 = className "mdl-color-text--cyan-A400"

  _cyanA700 :: ClassName
  _cyanA700 = className "mdl-color-text--cyan-A700"

  _deepOrange :: ClassName
  _deepOrange = className "mdl-color-text--deep-orange"

  _deepOrange100 :: ClassName
  _deepOrange100 = className "mdl-color-text--deep-orange-100"

  _deepOrange200 :: ClassName
  _deepOrange200 = className "mdl-color-text--deep-orange-200"

  _deepOrange300 :: ClassName
  _deepOrange300 = className "mdl-color-text--deep-orange-300"

  _deepOrange400 :: ClassName
  _deepOrange400 = className "mdl-color-text--deep-orange-400"

  _deepOrange50 :: ClassName
  _deepOrange50 = className "mdl-color-text--deep-orange-50"

  _deepOrange500 :: ClassName
  _deepOrange500 = className "mdl-color-text--deep-orange-500"

  _deepOrange600 :: ClassName
  _deepOrange600 = className "mdl-color-text--deep-orange-600"

  _deepOrange700 :: ClassName
  _deepOrange700 = className "mdl-color-text--deep-orange-700"

  _deepOrange800 :: ClassName
  _deepOrange800 = className "mdl-color-text--deep-orange-800"

  _deepOrange900 :: ClassName
  _deepOrange900 = className "mdl-color-text--deep-orange-900"

  _deepOrangeA100 :: ClassName
  _deepOrangeA100 = className "mdl-color-text--deep-orange-A100"

  _deepOrangeA200 :: ClassName
  _deepOrangeA200 = className "mdl-color-text--deep-orange-A200"

  _deepOrangeA400 :: ClassName
  _deepOrangeA400 = className "mdl-color-text--deep-orange-A400"

  _deepOrangeA700 :: ClassName
  _deepOrangeA700 = className "mdl-color-text--deep-orange-A700"

  _deepPurple :: ClassName
  _deepPurple = className "mdl-color-text--deep-purple"

  _deepPurple100 :: ClassName
  _deepPurple100 = className "mdl-color-text--deep-purple-100"

  _deepPurple200 :: ClassName
  _deepPurple200 = className "mdl-color-text--deep-purple-200"

  _deepPurple300 :: ClassName
  _deepPurple300 = className "mdl-color-text--deep-purple-300"

  _deepPurple400 :: ClassName
  _deepPurple400 = className "mdl-color-text--deep-purple-400"

  _deepPurple50 :: ClassName
  _deepPurple50 = className "mdl-color-text--deep-purple-50"

  _deepPurple500 :: ClassName
  _deepPurple500 = className "mdl-color-text--deep-purple-500"

  _deepPurple600 :: ClassName
  _deepPurple600 = className "mdl-color-text--deep-purple-600"

  _deepPurple700 :: ClassName
  _deepPurple700 = className "mdl-color-text--deep-purple-700"

  _deepPurple800 :: ClassName
  _deepPurple800 = className "mdl-color-text--deep-purple-800"

  _deepPurple900 :: ClassName
  _deepPurple900 = className "mdl-color-text--deep-purple-900"

  _deepPurpleA100 :: ClassName
  _deepPurpleA100 = className "mdl-color-text--deep-purple-A100"

  _deepPurpleA200 :: ClassName
  _deepPurpleA200 = className "mdl-color-text--deep-purple-A200"

  _deepPurpleA400 :: ClassName
  _deepPurpleA400 = className "mdl-color-text--deep-purple-A400"

  _deepPurpleA700 :: ClassName
  _deepPurpleA700 = className "mdl-color-text--deep-purple-A700"

  _green :: ClassName
  _green = className "mdl-color-text--green"

  _green100 :: ClassName
  _green100 = className "mdl-color-text--green-100"

  _green200 :: ClassName
  _green200 = className "mdl-color-text--green-200"

  _green300 :: ClassName
  _green300 = className "mdl-color-text--green-300"

  _green400 :: ClassName
  _green400 = className "mdl-color-text--green-400"

  _green50 :: ClassName
  _green50 = className "mdl-color-text--green-50"

  _green500 :: ClassName
  _green500 = className "mdl-color-text--green-500"

  _green600 :: ClassName
  _green600 = className "mdl-color-text--green-600"

  _green700 :: ClassName
  _green700 = className "mdl-color-text--green-700"

  _green800 :: ClassName
  _green800 = className "mdl-color-text--green-800"

  _green900 :: ClassName
  _green900 = className "mdl-color-text--green-900"

  _greenA100 :: ClassName
  _greenA100 = className "mdl-color-text--green-A100"

  _greenA200 :: ClassName
  _greenA200 = className "mdl-color-text--green-A200"

  _greenA400 :: ClassName
  _greenA400 = className "mdl-color-text--green-A400"

  _greenA700 :: ClassName
  _greenA700 = className "mdl-color-text--green-A700"

  _grey :: ClassName
  _grey = className "mdl-color-text--grey"

  _grey100 :: ClassName
  _grey100 = className "mdl-color-text--grey-100"

  _grey200 :: ClassName
  _grey200 = className "mdl-color-text--grey-200"

  _grey300 :: ClassName
  _grey300 = className "mdl-color-text--grey-300"

  _grey400 :: ClassName
  _grey400 = className "mdl-color-text--grey-400"

  _grey50 :: ClassName
  _grey50 = className "mdl-color-text--grey-50"

  _grey500 :: ClassName
  _grey500 = className "mdl-color-text--grey-500"

  _grey600 :: ClassName
  _grey600 = className "mdl-color-text--grey-600"

  _grey700 :: ClassName
  _grey700 = className "mdl-color-text--grey-700"

  _grey800 :: ClassName
  _grey800 = className "mdl-color-text--grey-800"

  _grey900 :: ClassName
  _grey900 = className "mdl-color-text--grey-900"

  _indigo :: ClassName
  _indigo = className "mdl-color-text--indigo"

  _indigo100 :: ClassName
  _indigo100 = className "mdl-color-text--indigo-100"

  _indigo200 :: ClassName
  _indigo200 = className "mdl-color-text--indigo-200"

  _indigo300 :: ClassName
  _indigo300 = className "mdl-color-text--indigo-300"

  _indigo400 :: ClassName
  _indigo400 = className "mdl-color-text--indigo-400"

  _indigo50 :: ClassName
  _indigo50 = className "mdl-color-text--indigo-50"

  _indigo500 :: ClassName
  _indigo500 = className "mdl-color-text--indigo-500"

  _indigo600 :: ClassName
  _indigo600 = className "mdl-color-text--indigo-600"

  _indigo700 :: ClassName
  _indigo700 = className "mdl-color-text--indigo-700"

  _indigo800 :: ClassName
  _indigo800 = className "mdl-color-text--indigo-800"

  _indigo900 :: ClassName
  _indigo900 = className "mdl-color-text--indigo-900"

  _indigoA100 :: ClassName
  _indigoA100 = className "mdl-color-text--indigo-A100"

  _indigoA200 :: ClassName
  _indigoA200 = className "mdl-color-text--indigo-A200"

  _indigoA400 :: ClassName
  _indigoA400 = className "mdl-color-text--indigo-A400"

  _indigoA700 :: ClassName
  _indigoA700 = className "mdl-color-text--indigo-A700"

  _lightBlue :: ClassName
  _lightBlue = className "mdl-color-text--light-blue"

  _lightBlue100 :: ClassName
  _lightBlue100 = className "mdl-color-text--light-blue-100"

  _lightBlue200 :: ClassName
  _lightBlue200 = className "mdl-color-text--light-blue-200"

  _lightBlue300 :: ClassName
  _lightBlue300 = className "mdl-color-text--light-blue-300"

  _lightBlue400 :: ClassName
  _lightBlue400 = className "mdl-color-text--light-blue-400"

  _lightBlue50 :: ClassName
  _lightBlue50 = className "mdl-color-text--light-blue-50"

  _lightBlue500 :: ClassName
  _lightBlue500 = className "mdl-color-text--light-blue-500"

  _lightBlue600 :: ClassName
  _lightBlue600 = className "mdl-color-text--light-blue-600"

  _lightBlue700 :: ClassName
  _lightBlue700 = className "mdl-color-text--light-blue-700"

  _lightBlue800 :: ClassName
  _lightBlue800 = className "mdl-color-text--light-blue-800"

  _lightBlue900 :: ClassName
  _lightBlue900 = className "mdl-color-text--light-blue-900"

  _lightBlueA100 :: ClassName
  _lightBlueA100 = className "mdl-color-text--light-blue-A100"

  _lightBlueA200 :: ClassName
  _lightBlueA200 = className "mdl-color-text--light-blue-A200"

  _lightBlueA400 :: ClassName
  _lightBlueA400 = className "mdl-color-text--light-blue-A400"

  _lightBlueA700 :: ClassName
  _lightBlueA700 = className "mdl-color-text--light-blue-A700"

  _lightGreen :: ClassName
  _lightGreen = className "mdl-color-text--light-green"

  _lightGreen100 :: ClassName
  _lightGreen100 = className "mdl-color-text--light-green-100"

  _lightGreen200 :: ClassName
  _lightGreen200 = className "mdl-color-text--light-green-200"

  _lightGreen300 :: ClassName
  _lightGreen300 = className "mdl-color-text--light-green-300"

  _lightGreen400 :: ClassName
  _lightGreen400 = className "mdl-color-text--light-green-400"

  _lightGreen50 :: ClassName
  _lightGreen50 = className "mdl-color-text--light-green-50"

  _lightGreen500 :: ClassName
  _lightGreen500 = className "mdl-color-text--light-green-500"

  _lightGreen600 :: ClassName
  _lightGreen600 = className "mdl-color-text--light-green-600"

  _lightGreen700 :: ClassName
  _lightGreen700 = className "mdl-color-text--light-green-700"

  _lightGreen800 :: ClassName
  _lightGreen800 = className "mdl-color-text--light-green-800"

  _lightGreen900 :: ClassName
  _lightGreen900 = className "mdl-color-text--light-green-900"

  _lightGreenA100 :: ClassName
  _lightGreenA100 = className "mdl-color-text--light-green-A100"

  _lightGreenA200 :: ClassName
  _lightGreenA200 = className "mdl-color-text--light-green-A200"

  _lightGreenA400 :: ClassName
  _lightGreenA400 = className "mdl-color-text--light-green-A400"

  _lightGreenA700 :: ClassName
  _lightGreenA700 = className "mdl-color-text--light-green-A700"

  _lime :: ClassName
  _lime = className "mdl-color-text--lime"

  _lime100 :: ClassName
  _lime100 = className "mdl-color-text--lime-100"

  _lime200 :: ClassName
  _lime200 = className "mdl-color-text--lime-200"

  _lime300 :: ClassName
  _lime300 = className "mdl-color-text--lime-300"

  _lime400 :: ClassName
  _lime400 = className "mdl-color-text--lime-400"

  _lime50 :: ClassName
  _lime50 = className "mdl-color-text--lime-50"

  _lime500 :: ClassName
  _lime500 = className "mdl-color-text--lime-500"

  _lime600 :: ClassName
  _lime600 = className "mdl-color-text--lime-600"

  _lime700 :: ClassName
  _lime700 = className "mdl-color-text--lime-700"

  _lime800 :: ClassName
  _lime800 = className "mdl-color-text--lime-800"

  _lime900 :: ClassName
  _lime900 = className "mdl-color-text--lime-900"

  _limeA100 :: ClassName
  _limeA100 = className "mdl-color-text--lime-A100"

  _limeA200 :: ClassName
  _limeA200 = className "mdl-color-text--lime-A200"

  _limeA400 :: ClassName
  _limeA400 = className "mdl-color-text--lime-A400"

  _limeA700 :: ClassName
  _limeA700 = className "mdl-color-text--lime-A700"

  _orange :: ClassName
  _orange = className "mdl-color-text--orange"

  _orange100 :: ClassName
  _orange100 = className "mdl-color-text--orange-100"

  _orange200 :: ClassName
  _orange200 = className "mdl-color-text--orange-200"

  _orange300 :: ClassName
  _orange300 = className "mdl-color-text--orange-300"

  _orange400 :: ClassName
  _orange400 = className "mdl-color-text--orange-400"

  _orange50 :: ClassName
  _orange50 = className "mdl-color-text--orange-50"

  _orange500 :: ClassName
  _orange500 = className "mdl-color-text--orange-500"

  _orange600 :: ClassName
  _orange600 = className "mdl-color-text--orange-600"

  _orange700 :: ClassName
  _orange700 = className "mdl-color-text--orange-700"

  _orange800 :: ClassName
  _orange800 = className "mdl-color-text--orange-800"

  _orange900 :: ClassName
  _orange900 = className "mdl-color-text--orange-900"

  _orangeA100 :: ClassName
  _orangeA100 = className "mdl-color-text--orange-A100"

  _orangeA200 :: ClassName
  _orangeA200 = className "mdl-color-text--orange-A200"

  _orangeA400 :: ClassName
  _orangeA400 = className "mdl-color-text--orange-A400"

  _orangeA700 :: ClassName
  _orangeA700 = className "mdl-color-text--orange-A700"

  _pink :: ClassName
  _pink = className "mdl-color-text--pink"

  _pink100 :: ClassName
  _pink100 = className "mdl-color-text--pink-100"

  _pink200 :: ClassName
  _pink200 = className "mdl-color-text--pink-200"

  _pink300 :: ClassName
  _pink300 = className "mdl-color-text--pink-300"

  _pink400 :: ClassName
  _pink400 = className "mdl-color-text--pink-400"

  _pink50 :: ClassName
  _pink50 = className "mdl-color-text--pink-50"

  _pink500 :: ClassName
  _pink500 = className "mdl-color-text--pink-500"

  _pink600 :: ClassName
  _pink600 = className "mdl-color-text--pink-600"

  _pink700 :: ClassName
  _pink700 = className "mdl-color-text--pink-700"

  _pink800 :: ClassName
  _pink800 = className "mdl-color-text--pink-800"

  _pink900 :: ClassName
  _pink900 = className "mdl-color-text--pink-900"

  _pinkA100 :: ClassName
  _pinkA100 = className "mdl-color-text--pink-A100"

  _pinkA200 :: ClassName
  _pinkA200 = className "mdl-color-text--pink-A200"

  _pinkA400 :: ClassName
  _pinkA400 = className "mdl-color-text--pink-A400"

  _pinkA700 :: ClassName
  _pinkA700 = className "mdl-color-text--pink-A700"

  _primary :: ClassName
  _primary = className "mdl-color-text--primary"

  _primaryContrast :: ClassName
  _primaryContrast = className "mdl-color-text--primary-contrast"

  _primaryDark :: ClassName
  _primaryDark = className "mdl-color-text--primary-dark"

  _purple :: ClassName
  _purple = className "mdl-color-text--purple"

  _purple100 :: ClassName
  _purple100 = className "mdl-color-text--purple-100"

  _purple200 :: ClassName
  _purple200 = className "mdl-color-text--purple-200"

  _purple300 :: ClassName
  _purple300 = className "mdl-color-text--purple-300"

  _purple400 :: ClassName
  _purple400 = className "mdl-color-text--purple-400"

  _purple50 :: ClassName
  _purple50 = className "mdl-color-text--purple-50"

  _purple500 :: ClassName
  _purple500 = className "mdl-color-text--purple-500"

  _purple600 :: ClassName
  _purple600 = className "mdl-color-text--purple-600"

  _purple700 :: ClassName
  _purple700 = className "mdl-color-text--purple-700"

  _purple800 :: ClassName
  _purple800 = className "mdl-color-text--purple-800"

  _purple900 :: ClassName
  _purple900 = className "mdl-color-text--purple-900"

  _purpleA100 :: ClassName
  _purpleA100 = className "mdl-color-text--purple-A100"

  _purpleA200 :: ClassName
  _purpleA200 = className "mdl-color-text--purple-A200"

  _purpleA400 :: ClassName
  _purpleA400 = className "mdl-color-text--purple-A400"

  _purpleA700 :: ClassName
  _purpleA700 = className "mdl-color-text--purple-A700"

  _red :: ClassName
  _red = className "mdl-color-text--red"

  _red100 :: ClassName
  _red100 = className "mdl-color-text--red-100"

  _red200 :: ClassName
  _red200 = className "mdl-color-text--red-200"

  _red300 :: ClassName
  _red300 = className "mdl-color-text--red-300"

  _red400 :: ClassName
  _red400 = className "mdl-color-text--red-400"

  _red50 :: ClassName
  _red50 = className "mdl-color-text--red-50"

  _red500 :: ClassName
  _red500 = className "mdl-color-text--red-500"

  _red600 :: ClassName
  _red600 = className "mdl-color-text--red-600"

  _red700 :: ClassName
  _red700 = className "mdl-color-text--red-700"

  _red800 :: ClassName
  _red800 = className "mdl-color-text--red-800"

  _red900 :: ClassName
  _red900 = className "mdl-color-text--red-900"

  _redA100 :: ClassName
  _redA100 = className "mdl-color-text--red-A100"

  _redA200 :: ClassName
  _redA200 = className "mdl-color-text--red-A200"

  _redA400 :: ClassName
  _redA400 = className "mdl-color-text--red-A400"

  _redA700 :: ClassName
  _redA700 = className "mdl-color-text--red-A700"

  _teal :: ClassName
  _teal = className "mdl-color-text--teal"

  _teal100 :: ClassName
  _teal100 = className "mdl-color-text--teal-100"

  _teal200 :: ClassName
  _teal200 = className "mdl-color-text--teal-200"

  _teal300 :: ClassName
  _teal300 = className "mdl-color-text--teal-300"

  _teal400 :: ClassName
  _teal400 = className "mdl-color-text--teal-400"

  _teal50 :: ClassName
  _teal50 = className "mdl-color-text--teal-50"

  _teal500 :: ClassName
  _teal500 = className "mdl-color-text--teal-500"

  _teal600 :: ClassName
  _teal600 = className "mdl-color-text--teal-600"

  _teal700 :: ClassName
  _teal700 = className "mdl-color-text--teal-700"

  _teal800 :: ClassName
  _teal800 = className "mdl-color-text--teal-800"

  _teal900 :: ClassName
  _teal900 = className "mdl-color-text--teal-900"

  _tealA100 :: ClassName
  _tealA100 = className "mdl-color-text--teal-A100"

  _tealA200 :: ClassName
  _tealA200 = className "mdl-color-text--teal-A200"

  _tealA400 :: ClassName
  _tealA400 = className "mdl-color-text--teal-A400"

  _tealA700 :: ClassName
  _tealA700 = className "mdl-color-text--teal-A700"

  _white :: ClassName
  _white = className "mdl-color-text--white"

  _yellow :: ClassName
  _yellow = className "mdl-color-text--yellow"

  _yellow100 :: ClassName
  _yellow100 = className "mdl-color-text--yellow-100"

  _yellow200 :: ClassName
  _yellow200 = className "mdl-color-text--yellow-200"

  _yellow300 :: ClassName
  _yellow300 = className "mdl-color-text--yellow-300"

  _yellow400 :: ClassName
  _yellow400 = className "mdl-color-text--yellow-400"

  _yellow50 :: ClassName
  _yellow50 = className "mdl-color-text--yellow-50"

  _yellow500 :: ClassName
  _yellow500 = className "mdl-color-text--yellow-500"

  _yellow600 :: ClassName
  _yellow600 = className "mdl-color-text--yellow-600"

  _yellow700 :: ClassName
  _yellow700 = className "mdl-color-text--yellow-700"

  _yellow800 :: ClassName
  _yellow800 = className "mdl-color-text--yellow-800"

  _yellow900 :: ClassName
  _yellow900 = className "mdl-color-text--yellow-900"

  _yellowA100 :: ClassName
  _yellowA100 = className "mdl-color-text--yellow-A100"

  _yellowA200 :: ClassName
  _yellowA200 = className "mdl-color-text--yellow-A200"

  _yellowA400 :: ClassName
  _yellowA400 = className "mdl-color-text--yellow-A400"

  _yellowA700 :: ClassName
  _yellowA700 = className "mdl-color-text--yellow-A700"


module MDL.DataTable where

  import Halogen.HTML.Core (ClassName, className)

  select :: ClassName
  select = className "mdl-data-table__select"


module MDL.DataTable.Cell where

  import Halogen.HTML.Core (ClassName, className)

  _nonNumeric :: ClassName
  _nonNumeric = className "mdl-data-table__cell--non-numeric"


module MDL.DataTable.Header where

  import Halogen.HTML.Core (ClassName, className)

  _sortedAscending :: ClassName
  _sortedAscending = className "mdl-data-table__header--sorted-ascending"

  _sortedDescending :: ClassName
  _sortedDescending = className "mdl-data-table__header--sorted-descending"


module MDL.Dialog where

  import Halogen.HTML.Core (ClassName, className)

  actions :: ClassName
  actions = className "mdl-dialog__actions"

  content :: ClassName
  content = className "mdl-dialog__content"

  title :: ClassName
  title = className "mdl-dialog__title"


module MDL.Dialog.Actions where

  import Halogen.HTML.Core (ClassName, className)

  _fullWidth :: ClassName
  _fullWidth = className "mdl-dialog__actions--full-width"


module MDL.Grid where

  import Halogen.HTML.Core (ClassName, className)

  _noSpacing :: ClassName
  _noSpacing = className "mdl-grid--no-spacing"


module MDL.IconToggle where

  import Halogen.HTML.Core (ClassName, className)

  input :: ClassName
  input = className "mdl-icon-toggle__input"

  label :: ClassName
  label = className "mdl-icon-toggle__label"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-icon-toggle__ripple-container"


module MDL.Layout where

  import Halogen.HTML.Core (ClassName, className)

  _fixedDrawer :: ClassName
  _fixedDrawer = className "mdl-layout--fixed-drawer"

  _fixedHeader :: ClassName
  _fixedHeader = className "mdl-layout--fixed-header"

  _fixedTabs :: ClassName
  _fixedTabs = className "mdl-layout--fixed-tabs"

  _largeScreenOnly :: ClassName
  _largeScreenOnly = className "mdl-layout--large-screen-only"

  _noDesktopDrawerButton :: ClassName
  _noDesktopDrawerButton = className "mdl-layout--no-desktop-drawer-button"

  _noDrawerButton :: ClassName
  _noDrawerButton = className "mdl-layout--no-drawer-button"

  _smallScreenOnly :: ClassName
  _smallScreenOnly = className "mdl-layout--small-screen-only"

  container :: ClassName
  container = className "mdl-layout__container"

  content :: ClassName
  content = className "mdl-layout__content"

  drawer :: ClassName
  drawer = className "mdl-layout__drawer"

  drawerButton :: ClassName
  drawerButton = className "mdl-layout__drawer-button"

  header :: ClassName
  header = className "mdl-layout__header"

  headerRow :: ClassName
  headerRow = className "mdl-layout__header-row"

  obfuscator :: ClassName
  obfuscator = className "mdl-layout__obfuscator"

  tab :: ClassName
  tab = className "mdl-layout__tab"

  tabBar :: ClassName
  tabBar = className "mdl-layout__tab-bar"

  tabBarButton :: ClassName
  tabBarButton = className "mdl-layout__tab-bar-button"

  tabBarContainer :: ClassName
  tabBarContainer = className "mdl-layout__tab-bar-container"

  tabBarLeftButton :: ClassName
  tabBarLeftButton = className "mdl-layout__tab-bar-left-button"

  tabBarRightButton :: ClassName
  tabBarRightButton = className "mdl-layout__tab-bar-right-button"

  tabPanel :: ClassName
  tabPanel = className "mdl-layout__tab-panel"

  tabRippleContainer :: ClassName
  tabRippleContainer = className "mdl-layout__tab-ripple-container"

  title :: ClassName
  title = className "mdl-layout__title"


module MDL.Layout.Header where

  import Halogen.HTML.Core (ClassName, className)

  _scroll :: ClassName
  _scroll = className "mdl-layout__header--scroll"

  _seamed :: ClassName
  _seamed = className "mdl-layout__header--seamed"

  _transparent :: ClassName
  _transparent = className "mdl-layout__header--transparent"

  _waterfall :: ClassName
  _waterfall = className "mdl-layout__header--waterfall"

  _waterfallHideTop :: ClassName
  _waterfallHideTop = className "mdl-layout__header--waterfall-hide-top"


module MDL.List where

  import Halogen.HTML.Core (ClassName, className)

  item :: ClassName
  item = className "mdl-list__item"

  itemAvatar :: ClassName
  itemAvatar = className "mdl-list__item-avatar"

  itemIcon :: ClassName
  itemIcon = className "mdl-list__item-icon"

  itemPrimaryContent :: ClassName
  itemPrimaryContent = className "mdl-list__item-primary-content"

  itemSecondaryAction :: ClassName
  itemSecondaryAction = className "mdl-list__item-secondary-action"

  itemSecondaryContent :: ClassName
  itemSecondaryContent = className "mdl-list__item-secondary-content"

  itemSecondaryInfo :: ClassName
  itemSecondaryInfo = className "mdl-list__item-secondary-info"

  itemSubHeader :: ClassName
  itemSubHeader = className "mdl-list__item-sub-header"

  itemSubTitle :: ClassName
  itemSubTitle = className "mdl-list__item-sub-title"

  itemTextBody :: ClassName
  itemTextBody = className "mdl-list__item-text-body"


module MDL.List.Item where

  import Halogen.HTML.Core (ClassName, className)

  _threeLine :: ClassName
  _threeLine = className "mdl-list__item--three-line"

  _twoLine :: ClassName
  _twoLine = className "mdl-list__item--two-line"


module MDL.MegaFooter where

  import Halogen.HTML.Core (ClassName, className)

  _bottomSection :: ClassName
  _bottomSection = className "mdl-mega-footer--bottom-section"

  _dropDownSection :: ClassName
  _dropDownSection = className "mdl-mega-footer--drop-down-section"

  _heading :: ClassName
  _heading = className "mdl-mega-footer--heading"

  _headingCheckbox :: ClassName
  _headingCheckbox = className "mdl-mega-footer--heading-checkbox"

  _leftSection :: ClassName
  _leftSection = className "mdl-mega-footer--left-section"

  _linkList :: ClassName
  _linkList = className "mdl-mega-footer--link-list"

  _middleSection :: ClassName
  _middleSection = className "mdl-mega-footer--middle-section"

  _rightSection :: ClassName
  _rightSection = className "mdl-mega-footer--right-section"

  _socialBtn :: ClassName
  _socialBtn = className "mdl-mega-footer--social-btn"

  _topSection :: ClassName
  _topSection = className "mdl-mega-footer--top-section"

  bottomSection :: ClassName
  bottomSection = className "mdl-mega-footer__bottom-section"

  dropDownSection :: ClassName
  dropDownSection = className "mdl-mega-footer__drop-down-section"

  heading :: ClassName
  heading = className "mdl-mega-footer__heading"

  headingCheckbox :: ClassName
  headingCheckbox = className "mdl-mega-footer__heading-checkbox"

  leftSection :: ClassName
  leftSection = className "mdl-mega-footer__left-section"

  linkList :: ClassName
  linkList = className "mdl-mega-footer__link-list"

  middleSection :: ClassName
  middleSection = className "mdl-mega-footer__middle-section"

  rightSection :: ClassName
  rightSection = className "mdl-mega-footer__right-section"

  socialBtn :: ClassName
  socialBtn = className "mdl-mega-footer__social-btn"

  topSection :: ClassName
  topSection = className "mdl-mega-footer__top-section"


module MDL.Menu where

  import Halogen.HTML.Core (ClassName, className)

  _bottomRight :: ClassName
  _bottomRight = className "mdl-menu--bottom-right"

  _topLeft :: ClassName
  _topLeft = className "mdl-menu--top-left"

  _topRight :: ClassName
  _topRight = className "mdl-menu--top-right"

  _unaligned :: ClassName
  _unaligned = className "mdl-menu--unaligned"

  container :: ClassName
  container = className "mdl-menu__container"

  item :: ClassName
  item = className "mdl-menu__item"

  outline :: ClassName
  outline = className "mdl-menu__outline"


module MDL.Menu.Item where

  import Halogen.HTML.Core (ClassName, className)

  _fullBleedDivider :: ClassName
  _fullBleedDivider = className "mdl-menu__item--full-bleed-divider"

  _rippleContainer :: ClassName
  _rippleContainer = className "mdl-menu__item--ripple-container"


module MDL.MiniFooter where

  import Halogen.HTML.Core (ClassName, className)

  _leftSection :: ClassName
  _leftSection = className "mdl-mini-footer--left-section"

  _linkList :: ClassName
  _linkList = className "mdl-mini-footer--link-list"

  _rightSection :: ClassName
  _rightSection = className "mdl-mini-footer--right-section"

  _socialBtn :: ClassName
  _socialBtn = className "mdl-mini-footer--social-btn"

  leftSection :: ClassName
  leftSection = className "mdl-mini-footer__left-section"

  linkList :: ClassName
  linkList = className "mdl-mini-footer__link-list"

  rightSection :: ClassName
  rightSection = className "mdl-mini-footer__right-section"

  socialBtn :: ClassName
  socialBtn = className "mdl-mini-footer__social-btn"


module MDL.Navigation where

  import Halogen.HTML.Core (ClassName, className)

  link :: ClassName
  link = className "mdl-navigation__link"


module MDL.Navigation.Link where

  import Halogen.HTML.Core (ClassName, className)

  _current :: ClassName
  _current = className "mdl-navigation__link--current"


module MDL.Progress where

  import Halogen.HTML.Core (ClassName, className)

  _indeterminate :: ClassName
  _indeterminate = className "mdl-progress--indeterminate"

  indeterminate :: ClassName
  indeterminate = className "mdl-progress__indeterminate"


module MDL.Radio where

  import Halogen.HTML.Core (ClassName, className)

  button :: ClassName
  button = className "mdl-radio__button"

  innerCircle :: ClassName
  innerCircle = className "mdl-radio__inner-circle"

  label :: ClassName
  label = className "mdl-radio__label"

  outerCircle :: ClassName
  outerCircle = className "mdl-radio__outer-circle"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-radio__ripple-container"


module MDL.Shadow where

  import Halogen.HTML.Core (ClassName, className)

  _16Dp :: ClassName
  _16Dp = className "mdl-shadow--16dp"

  _24Dp :: ClassName
  _24Dp = className "mdl-shadow--24dp"

  _2Dp :: ClassName
  _2Dp = className "mdl-shadow--2dp"

  _3Dp :: ClassName
  _3Dp = className "mdl-shadow--3dp"

  _4Dp :: ClassName
  _4Dp = className "mdl-shadow--4dp"

  _6Dp :: ClassName
  _6Dp = className "mdl-shadow--6dp"

  _8Dp :: ClassName
  _8Dp = className "mdl-shadow--8dp"


module MDL.Slider where

  import Halogen.HTML.Core (ClassName, className)

  backgroundFlex :: ClassName
  backgroundFlex = className "mdl-slider__background-flex"

  backgroundLower :: ClassName
  backgroundLower = className "mdl-slider__background-lower"

  backgroundUpper :: ClassName
  backgroundUpper = className "mdl-slider__background-upper"

  container :: ClassName
  container = className "mdl-slider__container"

  ieContainer :: ClassName
  ieContainer = className "mdl-slider__ie-container"


module MDL.Snackbar where

  import Halogen.HTML.Core (ClassName, className)

  _active :: ClassName
  _active = className "mdl-snackbar--active"

  action :: ClassName
  action = className "mdl-snackbar__action"

  text :: ClassName
  text = className "mdl-snackbar__text"


module MDL.Spinner where

  import Halogen.HTML.Core (ClassName, className)

  _singleColor :: ClassName
  _singleColor = className "mdl-spinner--single-color"

  circle :: ClassName
  circle = className "mdl-spinner__circle"

  circleClipper :: ClassName
  circleClipper = className "mdl-spinner__circle-clipper"

  gapPatch :: ClassName
  gapPatch = className "mdl-spinner__gap-patch"

  layer :: ClassName
  layer = className "mdl-spinner__layer"

  layer1 :: ClassName
  layer1 = className "mdl-spinner__layer-1"

  layer2 :: ClassName
  layer2 = className "mdl-spinner__layer-2"

  layer3 :: ClassName
  layer3 = className "mdl-spinner__layer-3"

  layer4 :: ClassName
  layer4 = className "mdl-spinner__layer-4"

  left :: ClassName
  left = className "mdl-spinner__left"

  right :: ClassName
  right = className "mdl-spinner__right"


module MDL.Switch where

  import Halogen.HTML.Core (ClassName, className)

  focusHelper :: ClassName
  focusHelper = className "mdl-switch__focus-helper"

  input :: ClassName
  input = className "mdl-switch__input"

  label :: ClassName
  label = className "mdl-switch__label"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-switch__ripple-container"

  thumb :: ClassName
  thumb = className "mdl-switch__thumb"

  track :: ClassName
  track = className "mdl-switch__track"


module MDL.Tabs where

  import Halogen.HTML.Core (ClassName, className)

  panel :: ClassName
  panel = className "mdl-tabs__panel"

  rippleContainer :: ClassName
  rippleContainer = className "mdl-tabs__ripple-container"

  tab :: ClassName
  tab = className "mdl-tabs__tab"

  tabBar :: ClassName
  tabBar = className "mdl-tabs__tab-bar"


module MDL.Textfield where

  import Halogen.HTML.Core (ClassName, className)

  _alignRight :: ClassName
  _alignRight = className "mdl-textfield--align-right"

  _expandable :: ClassName
  _expandable = className "mdl-textfield--expandable"

  _floatingLabel :: ClassName
  _floatingLabel = className "mdl-textfield--floating-label"

  _fullWidth :: ClassName
  _fullWidth = className "mdl-textfield--full-width"

  error :: ClassName
  error = className "mdl-textfield__error"

  expandableHolder :: ClassName
  expandableHolder = className "mdl-textfield__expandable-holder"

  input :: ClassName
  input = className "mdl-textfield__input"

  label :: ClassName
  label = className "mdl-textfield__label"


module MDL.Tooltip where

  import Halogen.HTML.Core (ClassName, className)

  _large :: ClassName
  _large = className "mdl-tooltip--large"


module MDL.Typography where

  import Halogen.HTML.Core (ClassName, className)

  _body1 :: ClassName
  _body1 = className "mdl-typography--body-1"

  _body1ColorContrast :: ClassName
  _body1ColorContrast = className "mdl-typography--body-1-color-contrast"

  _body1ForcePreferredFont :: ClassName
  _body1ForcePreferredFont = className "mdl-typography--body-1-force-preferred-font"

  _body1ForcePreferredFontColorContrast :: ClassName
  _body1ForcePreferredFontColorContrast = className "mdl-typography--body-1-force-preferred-font-color-contrast"

  _body2 :: ClassName
  _body2 = className "mdl-typography--body-2"

  _body2ColorContrast :: ClassName
  _body2ColorContrast = className "mdl-typography--body-2-color-contrast"

  _body2ForcePreferredFont :: ClassName
  _body2ForcePreferredFont = className "mdl-typography--body-2-force-preferred-font"

  _body2ForcePreferredFontColorContrast :: ClassName
  _body2ForcePreferredFontColorContrast = className "mdl-typography--body-2-force-preferred-font-color-contrast"

  _button :: ClassName
  _button = className "mdl-typography--button"

  _buttonColorContrast :: ClassName
  _buttonColorContrast = className "mdl-typography--button-color-contrast"

  _caption :: ClassName
  _caption = className "mdl-typography--caption"

  _captionColorContrast :: ClassName
  _captionColorContrast = className "mdl-typography--caption-color-contrast"

  _captionForcePreferredFont :: ClassName
  _captionForcePreferredFont = className "mdl-typography--caption-force-preferred-font"

  _captionForcePreferredFontColorContrast :: ClassName
  _captionForcePreferredFontColorContrast = className "mdl-typography--caption-force-preferred-font-color-contrast"

  _display1 :: ClassName
  _display1 = className "mdl-typography--display-1"

  _display1ColorContrast :: ClassName
  _display1ColorContrast = className "mdl-typography--display-1-color-contrast"

  _display2 :: ClassName
  _display2 = className "mdl-typography--display-2"

  _display2ColorContrast :: ClassName
  _display2ColorContrast = className "mdl-typography--display-2-color-contrast"

  _display3 :: ClassName
  _display3 = className "mdl-typography--display-3"

  _display3ColorContrast :: ClassName
  _display3ColorContrast = className "mdl-typography--display-3-color-contrast"

  _display4 :: ClassName
  _display4 = className "mdl-typography--display-4"

  _display4ColorContrast :: ClassName
  _display4ColorContrast = className "mdl-typography--display-4-color-contrast"

  _fontBlack :: ClassName
  _fontBlack = className "mdl-typography--font-black"

  _fontBold :: ClassName
  _fontBold = className "mdl-typography--font-bold"

  _fontLight :: ClassName
  _fontLight = className "mdl-typography--font-light"

  _fontMedium :: ClassName
  _fontMedium = className "mdl-typography--font-medium"

  _fontRegular :: ClassName
  _fontRegular = className "mdl-typography--font-regular"

  _fontThin :: ClassName
  _fontThin = className "mdl-typography--font-thin"

  _headline :: ClassName
  _headline = className "mdl-typography--headline"

  _headlineColorContrast :: ClassName
  _headlineColorContrast = className "mdl-typography--headline-color-contrast"

  _menu :: ClassName
  _menu = className "mdl-typography--menu"

  _menuColorContrast :: ClassName
  _menuColorContrast = className "mdl-typography--menu-color-contrast"

  _subhead :: ClassName
  _subhead = className "mdl-typography--subhead"

  _subheadColorContrast :: ClassName
  _subheadColorContrast = className "mdl-typography--subhead-color-contrast"

  _textCapitalize :: ClassName
  _textCapitalize = className "mdl-typography--text-capitalize"

  _textCenter :: ClassName
  _textCenter = className "mdl-typography--text-center"

  _textJustify :: ClassName
  _textJustify = className "mdl-typography--text-justify"

  _textLeft :: ClassName
  _textLeft = className "mdl-typography--text-left"

  _textLowercase :: ClassName
  _textLowercase = className "mdl-typography--text-lowercase"

  _textNowrap :: ClassName
  _textNowrap = className "mdl-typography--text-nowrap"

  _textRight :: ClassName
  _textRight = className "mdl-typography--text-right"

  _textUppercase :: ClassName
  _textUppercase = className "mdl-typography--text-uppercase"

  _title :: ClassName
  _title = className "mdl-typography--title"

  _titleColorContrast :: ClassName
  _titleColorContrast = className "mdl-typography--title-color-contrast"


