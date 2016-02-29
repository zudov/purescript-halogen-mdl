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

  button :: ClassName
  button = className "mdl-button"

  card :: ClassName
  card = className "mdl-card"

  checkbox :: ClassName
  checkbox = className "mdl-checkbox"

  dropdownMenu :: ClassName
  dropdownMenu = className "mdl-dropdown-menu"

  iconToggle :: ClassName
  iconToggle = className "mdl-icon-toggle"

  item :: ClassName
  item = className "mdl-item"

  radio :: ClassName
  radio = className "mdl-radio"

  slider :: ClassName
  slider = className "mdl-slider"

  switch :: ClassName
  switch = className "mdl-switch"

  ripple :: ClassName
  ripple = className "mdl-ripple"

  badge :: ClassName
  badge = className "mdl-badge"

  dataTable :: ClassName
  dataTable = className "mdl-data-table"

  dialog :: ClassName
  dialog = className "mdl-dialog"

  megaFooter :: ClassName
  megaFooter = className "mdl-mega-footer"

  logo :: ClassName
  logo = className "mdl-logo"

  miniFooter :: ClassName
  miniFooter = className "mdl-mini-footer"

  list :: ClassName
  list = className "mdl-list"

  menu :: ClassName
  menu = className "mdl-menu"

  progress :: ClassName
  progress = className "mdl-progress"

  navigation :: ClassName
  navigation = className "mdl-navigation"

  layout :: ClassName
  layout = className "mdl-layout"

  layoutTitle :: ClassName
  layoutTitle = className "mdl-layout-title"

  layoutSpacer :: ClassName
  layoutSpacer = className "mdl-layout-spacer"

  snackbar :: ClassName
  snackbar = className "mdl-snackbar"

  spinner :: ClassName
  spinner = className "mdl-spinner"

  tabs :: ClassName
  tabs = className "mdl-tabs"

  textfield :: ClassName
  textfield = className "mdl-textfield"

  tooltip :: ClassName
  tooltip = className "mdl-tooltip"

  grid :: ClassName
  grid = className "mdl-grid"

  cell :: ClassName
  cell = className "mdl-cell"


module MDL.Typography where

  import Halogen.HTML.Core (ClassName, className)

  display4 :: ClassName
  display4 = className "mdl-typography--display-4"

  display4ColorContrast :: ClassName
  display4ColorContrast = className "mdl-typography--display-4-color-contrast"

  display3 :: ClassName
  display3 = className "mdl-typography--display-3"

  display3ColorContrast :: ClassName
  display3ColorContrast = className "mdl-typography--display-3-color-contrast"

  display2 :: ClassName
  display2 = className "mdl-typography--display-2"

  display2ColorContrast :: ClassName
  display2ColorContrast = className "mdl-typography--display-2-color-contrast"

  display1 :: ClassName
  display1 = className "mdl-typography--display-1"

  display1ColorContrast :: ClassName
  display1ColorContrast = className "mdl-typography--display-1-color-contrast"

  headline :: ClassName
  headline = className "mdl-typography--headline"

  headlineColorContrast :: ClassName
  headlineColorContrast = className "mdl-typography--headline-color-contrast"

  title :: ClassName
  title = className "mdl-typography--title"

  titleColorContrast :: ClassName
  titleColorContrast = className "mdl-typography--title-color-contrast"

  subhead :: ClassName
  subhead = className "mdl-typography--subhead"

  subheadColorContrast :: ClassName
  subheadColorContrast = className "mdl-typography--subhead-color-contrast"

  body2 :: ClassName
  body2 = className "mdl-typography--body-2"

  body2ColorContrast :: ClassName
  body2ColorContrast = className "mdl-typography--body-2-color-contrast"

  body1 :: ClassName
  body1 = className "mdl-typography--body-1"

  body1ColorContrast :: ClassName
  body1ColorContrast = className "mdl-typography--body-1-color-contrast"

  body2ForcePreferredFont :: ClassName
  body2ForcePreferredFont = className "mdl-typography--body-2-force-preferred-font"

  body2ForcePreferredFontColorContrast :: ClassName
  body2ForcePreferredFontColorContrast = className "mdl-typography--body-2-force-preferred-font-color-contrast"

  body1ForcePreferredFont :: ClassName
  body1ForcePreferredFont = className "mdl-typography--body-1-force-preferred-font"

  body1ForcePreferredFontColorContrast :: ClassName
  body1ForcePreferredFontColorContrast = className "mdl-typography--body-1-force-preferred-font-color-contrast"

  caption :: ClassName
  caption = className "mdl-typography--caption"

  captionForcePreferredFont :: ClassName
  captionForcePreferredFont = className "mdl-typography--caption-force-preferred-font"

  captionColorContrast :: ClassName
  captionColorContrast = className "mdl-typography--caption-color-contrast"

  captionForcePreferredFontColorContrast :: ClassName
  captionForcePreferredFontColorContrast = className "mdl-typography--caption-force-preferred-font-color-contrast"

  menu :: ClassName
  menu = className "mdl-typography--menu"

  menuColorContrast :: ClassName
  menuColorContrast = className "mdl-typography--menu-color-contrast"

  button :: ClassName
  button = className "mdl-typography--button"

  buttonColorContrast :: ClassName
  buttonColorContrast = className "mdl-typography--button-color-contrast"

  textLeft :: ClassName
  textLeft = className "mdl-typography--text-left"

  textRight :: ClassName
  textRight = className "mdl-typography--text-right"

  textCenter :: ClassName
  textCenter = className "mdl-typography--text-center"

  textJustify :: ClassName
  textJustify = className "mdl-typography--text-justify"

  textNowrap :: ClassName
  textNowrap = className "mdl-typography--text-nowrap"

  textLowercase :: ClassName
  textLowercase = className "mdl-typography--text-lowercase"

  textUppercase :: ClassName
  textUppercase = className "mdl-typography--text-uppercase"

  textCapitalize :: ClassName
  textCapitalize = className "mdl-typography--text-capitalize"

  fontThin :: ClassName
  fontThin = className "mdl-typography--font-thin"

  fontLight :: ClassName
  fontLight = className "mdl-typography--font-light"

  fontRegular :: ClassName
  fontRegular = className "mdl-typography--font-regular"

  fontMedium :: ClassName
  fontMedium = className "mdl-typography--font-medium"

  fontBold :: ClassName
  fontBold = className "mdl-typography--font-bold"

  fontBlack :: ClassName
  fontBlack = className "mdl-typography--font-black"


module MDL.ColorText where

  import Halogen.HTML.Core (ClassName, className)

  red :: ClassName
  red = className "mdl-color-text--red"

  red50 :: ClassName
  red50 = className "mdl-color-text--red-50"

  red100 :: ClassName
  red100 = className "mdl-color-text--red-100"

  red200 :: ClassName
  red200 = className "mdl-color-text--red-200"

  red300 :: ClassName
  red300 = className "mdl-color-text--red-300"

  red400 :: ClassName
  red400 = className "mdl-color-text--red-400"

  red500 :: ClassName
  red500 = className "mdl-color-text--red-500"

  red600 :: ClassName
  red600 = className "mdl-color-text--red-600"

  red700 :: ClassName
  red700 = className "mdl-color-text--red-700"

  red800 :: ClassName
  red800 = className "mdl-color-text--red-800"

  red900 :: ClassName
  red900 = className "mdl-color-text--red-900"

  redA100 :: ClassName
  redA100 = className "mdl-color-text--red-A100"

  redA200 :: ClassName
  redA200 = className "mdl-color-text--red-A200"

  redA400 :: ClassName
  redA400 = className "mdl-color-text--red-A400"

  redA700 :: ClassName
  redA700 = className "mdl-color-text--red-A700"

  pink :: ClassName
  pink = className "mdl-color-text--pink"

  pink50 :: ClassName
  pink50 = className "mdl-color-text--pink-50"

  pink100 :: ClassName
  pink100 = className "mdl-color-text--pink-100"

  pink200 :: ClassName
  pink200 = className "mdl-color-text--pink-200"

  pink300 :: ClassName
  pink300 = className "mdl-color-text--pink-300"

  pink400 :: ClassName
  pink400 = className "mdl-color-text--pink-400"

  pink500 :: ClassName
  pink500 = className "mdl-color-text--pink-500"

  pink600 :: ClassName
  pink600 = className "mdl-color-text--pink-600"

  pink700 :: ClassName
  pink700 = className "mdl-color-text--pink-700"

  pink800 :: ClassName
  pink800 = className "mdl-color-text--pink-800"

  pink900 :: ClassName
  pink900 = className "mdl-color-text--pink-900"

  pinkA100 :: ClassName
  pinkA100 = className "mdl-color-text--pink-A100"

  pinkA200 :: ClassName
  pinkA200 = className "mdl-color-text--pink-A200"

  pinkA400 :: ClassName
  pinkA400 = className "mdl-color-text--pink-A400"

  pinkA700 :: ClassName
  pinkA700 = className "mdl-color-text--pink-A700"

  purple :: ClassName
  purple = className "mdl-color-text--purple"

  purple50 :: ClassName
  purple50 = className "mdl-color-text--purple-50"

  purple100 :: ClassName
  purple100 = className "mdl-color-text--purple-100"

  purple200 :: ClassName
  purple200 = className "mdl-color-text--purple-200"

  purple300 :: ClassName
  purple300 = className "mdl-color-text--purple-300"

  purple400 :: ClassName
  purple400 = className "mdl-color-text--purple-400"

  purple500 :: ClassName
  purple500 = className "mdl-color-text--purple-500"

  purple600 :: ClassName
  purple600 = className "mdl-color-text--purple-600"

  purple700 :: ClassName
  purple700 = className "mdl-color-text--purple-700"

  purple800 :: ClassName
  purple800 = className "mdl-color-text--purple-800"

  purple900 :: ClassName
  purple900 = className "mdl-color-text--purple-900"

  purpleA100 :: ClassName
  purpleA100 = className "mdl-color-text--purple-A100"

  purpleA200 :: ClassName
  purpleA200 = className "mdl-color-text--purple-A200"

  purpleA400 :: ClassName
  purpleA400 = className "mdl-color-text--purple-A400"

  purpleA700 :: ClassName
  purpleA700 = className "mdl-color-text--purple-A700"

  deepPurple :: ClassName
  deepPurple = className "mdl-color-text--deep-purple"

  deepPurple50 :: ClassName
  deepPurple50 = className "mdl-color-text--deep-purple-50"

  deepPurple100 :: ClassName
  deepPurple100 = className "mdl-color-text--deep-purple-100"

  deepPurple200 :: ClassName
  deepPurple200 = className "mdl-color-text--deep-purple-200"

  deepPurple300 :: ClassName
  deepPurple300 = className "mdl-color-text--deep-purple-300"

  deepPurple400 :: ClassName
  deepPurple400 = className "mdl-color-text--deep-purple-400"

  deepPurple500 :: ClassName
  deepPurple500 = className "mdl-color-text--deep-purple-500"

  deepPurple600 :: ClassName
  deepPurple600 = className "mdl-color-text--deep-purple-600"

  deepPurple700 :: ClassName
  deepPurple700 = className "mdl-color-text--deep-purple-700"

  deepPurple800 :: ClassName
  deepPurple800 = className "mdl-color-text--deep-purple-800"

  deepPurple900 :: ClassName
  deepPurple900 = className "mdl-color-text--deep-purple-900"

  deepPurpleA100 :: ClassName
  deepPurpleA100 = className "mdl-color-text--deep-purple-A100"

  deepPurpleA200 :: ClassName
  deepPurpleA200 = className "mdl-color-text--deep-purple-A200"

  deepPurpleA400 :: ClassName
  deepPurpleA400 = className "mdl-color-text--deep-purple-A400"

  deepPurpleA700 :: ClassName
  deepPurpleA700 = className "mdl-color-text--deep-purple-A700"

  indigo :: ClassName
  indigo = className "mdl-color-text--indigo"

  indigo50 :: ClassName
  indigo50 = className "mdl-color-text--indigo-50"

  indigo100 :: ClassName
  indigo100 = className "mdl-color-text--indigo-100"

  indigo200 :: ClassName
  indigo200 = className "mdl-color-text--indigo-200"

  indigo300 :: ClassName
  indigo300 = className "mdl-color-text--indigo-300"

  indigo400 :: ClassName
  indigo400 = className "mdl-color-text--indigo-400"

  indigo500 :: ClassName
  indigo500 = className "mdl-color-text--indigo-500"

  indigo600 :: ClassName
  indigo600 = className "mdl-color-text--indigo-600"

  indigo700 :: ClassName
  indigo700 = className "mdl-color-text--indigo-700"

  indigo800 :: ClassName
  indigo800 = className "mdl-color-text--indigo-800"

  indigo900 :: ClassName
  indigo900 = className "mdl-color-text--indigo-900"

  indigoA100 :: ClassName
  indigoA100 = className "mdl-color-text--indigo-A100"

  indigoA200 :: ClassName
  indigoA200 = className "mdl-color-text--indigo-A200"

  indigoA400 :: ClassName
  indigoA400 = className "mdl-color-text--indigo-A400"

  indigoA700 :: ClassName
  indigoA700 = className "mdl-color-text--indigo-A700"

  blue :: ClassName
  blue = className "mdl-color-text--blue"

  blue50 :: ClassName
  blue50 = className "mdl-color-text--blue-50"

  blue100 :: ClassName
  blue100 = className "mdl-color-text--blue-100"

  blue200 :: ClassName
  blue200 = className "mdl-color-text--blue-200"

  blue300 :: ClassName
  blue300 = className "mdl-color-text--blue-300"

  blue400 :: ClassName
  blue400 = className "mdl-color-text--blue-400"

  blue500 :: ClassName
  blue500 = className "mdl-color-text--blue-500"

  blue600 :: ClassName
  blue600 = className "mdl-color-text--blue-600"

  blue700 :: ClassName
  blue700 = className "mdl-color-text--blue-700"

  blue800 :: ClassName
  blue800 = className "mdl-color-text--blue-800"

  blue900 :: ClassName
  blue900 = className "mdl-color-text--blue-900"

  blueA100 :: ClassName
  blueA100 = className "mdl-color-text--blue-A100"

  blueA200 :: ClassName
  blueA200 = className "mdl-color-text--blue-A200"

  blueA400 :: ClassName
  blueA400 = className "mdl-color-text--blue-A400"

  blueA700 :: ClassName
  blueA700 = className "mdl-color-text--blue-A700"

  lightBlue :: ClassName
  lightBlue = className "mdl-color-text--light-blue"

  lightBlue50 :: ClassName
  lightBlue50 = className "mdl-color-text--light-blue-50"

  lightBlue100 :: ClassName
  lightBlue100 = className "mdl-color-text--light-blue-100"

  lightBlue200 :: ClassName
  lightBlue200 = className "mdl-color-text--light-blue-200"

  lightBlue300 :: ClassName
  lightBlue300 = className "mdl-color-text--light-blue-300"

  lightBlue400 :: ClassName
  lightBlue400 = className "mdl-color-text--light-blue-400"

  lightBlue500 :: ClassName
  lightBlue500 = className "mdl-color-text--light-blue-500"

  lightBlue600 :: ClassName
  lightBlue600 = className "mdl-color-text--light-blue-600"

  lightBlue700 :: ClassName
  lightBlue700 = className "mdl-color-text--light-blue-700"

  lightBlue800 :: ClassName
  lightBlue800 = className "mdl-color-text--light-blue-800"

  lightBlue900 :: ClassName
  lightBlue900 = className "mdl-color-text--light-blue-900"

  lightBlueA100 :: ClassName
  lightBlueA100 = className "mdl-color-text--light-blue-A100"

  lightBlueA200 :: ClassName
  lightBlueA200 = className "mdl-color-text--light-blue-A200"

  lightBlueA400 :: ClassName
  lightBlueA400 = className "mdl-color-text--light-blue-A400"

  lightBlueA700 :: ClassName
  lightBlueA700 = className "mdl-color-text--light-blue-A700"

  cyan :: ClassName
  cyan = className "mdl-color-text--cyan"

  cyan50 :: ClassName
  cyan50 = className "mdl-color-text--cyan-50"

  cyan100 :: ClassName
  cyan100 = className "mdl-color-text--cyan-100"

  cyan200 :: ClassName
  cyan200 = className "mdl-color-text--cyan-200"

  cyan300 :: ClassName
  cyan300 = className "mdl-color-text--cyan-300"

  cyan400 :: ClassName
  cyan400 = className "mdl-color-text--cyan-400"

  cyan500 :: ClassName
  cyan500 = className "mdl-color-text--cyan-500"

  cyan600 :: ClassName
  cyan600 = className "mdl-color-text--cyan-600"

  cyan700 :: ClassName
  cyan700 = className "mdl-color-text--cyan-700"

  cyan800 :: ClassName
  cyan800 = className "mdl-color-text--cyan-800"

  cyan900 :: ClassName
  cyan900 = className "mdl-color-text--cyan-900"

  cyanA100 :: ClassName
  cyanA100 = className "mdl-color-text--cyan-A100"

  cyanA200 :: ClassName
  cyanA200 = className "mdl-color-text--cyan-A200"

  cyanA400 :: ClassName
  cyanA400 = className "mdl-color-text--cyan-A400"

  cyanA700 :: ClassName
  cyanA700 = className "mdl-color-text--cyan-A700"

  teal :: ClassName
  teal = className "mdl-color-text--teal"

  teal50 :: ClassName
  teal50 = className "mdl-color-text--teal-50"

  teal100 :: ClassName
  teal100 = className "mdl-color-text--teal-100"

  teal200 :: ClassName
  teal200 = className "mdl-color-text--teal-200"

  teal300 :: ClassName
  teal300 = className "mdl-color-text--teal-300"

  teal400 :: ClassName
  teal400 = className "mdl-color-text--teal-400"

  teal500 :: ClassName
  teal500 = className "mdl-color-text--teal-500"

  teal600 :: ClassName
  teal600 = className "mdl-color-text--teal-600"

  teal700 :: ClassName
  teal700 = className "mdl-color-text--teal-700"

  teal800 :: ClassName
  teal800 = className "mdl-color-text--teal-800"

  teal900 :: ClassName
  teal900 = className "mdl-color-text--teal-900"

  tealA100 :: ClassName
  tealA100 = className "mdl-color-text--teal-A100"

  tealA200 :: ClassName
  tealA200 = className "mdl-color-text--teal-A200"

  tealA400 :: ClassName
  tealA400 = className "mdl-color-text--teal-A400"

  tealA700 :: ClassName
  tealA700 = className "mdl-color-text--teal-A700"

  green :: ClassName
  green = className "mdl-color-text--green"

  green50 :: ClassName
  green50 = className "mdl-color-text--green-50"

  green100 :: ClassName
  green100 = className "mdl-color-text--green-100"

  green200 :: ClassName
  green200 = className "mdl-color-text--green-200"

  green300 :: ClassName
  green300 = className "mdl-color-text--green-300"

  green400 :: ClassName
  green400 = className "mdl-color-text--green-400"

  green500 :: ClassName
  green500 = className "mdl-color-text--green-500"

  green600 :: ClassName
  green600 = className "mdl-color-text--green-600"

  green700 :: ClassName
  green700 = className "mdl-color-text--green-700"

  green800 :: ClassName
  green800 = className "mdl-color-text--green-800"

  green900 :: ClassName
  green900 = className "mdl-color-text--green-900"

  greenA100 :: ClassName
  greenA100 = className "mdl-color-text--green-A100"

  greenA200 :: ClassName
  greenA200 = className "mdl-color-text--green-A200"

  greenA400 :: ClassName
  greenA400 = className "mdl-color-text--green-A400"

  greenA700 :: ClassName
  greenA700 = className "mdl-color-text--green-A700"

  lightGreen :: ClassName
  lightGreen = className "mdl-color-text--light-green"

  lightGreen50 :: ClassName
  lightGreen50 = className "mdl-color-text--light-green-50"

  lightGreen100 :: ClassName
  lightGreen100 = className "mdl-color-text--light-green-100"

  lightGreen200 :: ClassName
  lightGreen200 = className "mdl-color-text--light-green-200"

  lightGreen300 :: ClassName
  lightGreen300 = className "mdl-color-text--light-green-300"

  lightGreen400 :: ClassName
  lightGreen400 = className "mdl-color-text--light-green-400"

  lightGreen500 :: ClassName
  lightGreen500 = className "mdl-color-text--light-green-500"

  lightGreen600 :: ClassName
  lightGreen600 = className "mdl-color-text--light-green-600"

  lightGreen700 :: ClassName
  lightGreen700 = className "mdl-color-text--light-green-700"

  lightGreen800 :: ClassName
  lightGreen800 = className "mdl-color-text--light-green-800"

  lightGreen900 :: ClassName
  lightGreen900 = className "mdl-color-text--light-green-900"

  lightGreenA100 :: ClassName
  lightGreenA100 = className "mdl-color-text--light-green-A100"

  lightGreenA200 :: ClassName
  lightGreenA200 = className "mdl-color-text--light-green-A200"

  lightGreenA400 :: ClassName
  lightGreenA400 = className "mdl-color-text--light-green-A400"

  lightGreenA700 :: ClassName
  lightGreenA700 = className "mdl-color-text--light-green-A700"

  lime :: ClassName
  lime = className "mdl-color-text--lime"

  lime50 :: ClassName
  lime50 = className "mdl-color-text--lime-50"

  lime100 :: ClassName
  lime100 = className "mdl-color-text--lime-100"

  lime200 :: ClassName
  lime200 = className "mdl-color-text--lime-200"

  lime300 :: ClassName
  lime300 = className "mdl-color-text--lime-300"

  lime400 :: ClassName
  lime400 = className "mdl-color-text--lime-400"

  lime500 :: ClassName
  lime500 = className "mdl-color-text--lime-500"

  lime600 :: ClassName
  lime600 = className "mdl-color-text--lime-600"

  lime700 :: ClassName
  lime700 = className "mdl-color-text--lime-700"

  lime800 :: ClassName
  lime800 = className "mdl-color-text--lime-800"

  lime900 :: ClassName
  lime900 = className "mdl-color-text--lime-900"

  limeA100 :: ClassName
  limeA100 = className "mdl-color-text--lime-A100"

  limeA200 :: ClassName
  limeA200 = className "mdl-color-text--lime-A200"

  limeA400 :: ClassName
  limeA400 = className "mdl-color-text--lime-A400"

  limeA700 :: ClassName
  limeA700 = className "mdl-color-text--lime-A700"

  yellow :: ClassName
  yellow = className "mdl-color-text--yellow"

  yellow50 :: ClassName
  yellow50 = className "mdl-color-text--yellow-50"

  yellow100 :: ClassName
  yellow100 = className "mdl-color-text--yellow-100"

  yellow200 :: ClassName
  yellow200 = className "mdl-color-text--yellow-200"

  yellow300 :: ClassName
  yellow300 = className "mdl-color-text--yellow-300"

  yellow400 :: ClassName
  yellow400 = className "mdl-color-text--yellow-400"

  yellow500 :: ClassName
  yellow500 = className "mdl-color-text--yellow-500"

  yellow600 :: ClassName
  yellow600 = className "mdl-color-text--yellow-600"

  yellow700 :: ClassName
  yellow700 = className "mdl-color-text--yellow-700"

  yellow800 :: ClassName
  yellow800 = className "mdl-color-text--yellow-800"

  yellow900 :: ClassName
  yellow900 = className "mdl-color-text--yellow-900"

  yellowA100 :: ClassName
  yellowA100 = className "mdl-color-text--yellow-A100"

  yellowA200 :: ClassName
  yellowA200 = className "mdl-color-text--yellow-A200"

  yellowA400 :: ClassName
  yellowA400 = className "mdl-color-text--yellow-A400"

  yellowA700 :: ClassName
  yellowA700 = className "mdl-color-text--yellow-A700"

  amber :: ClassName
  amber = className "mdl-color-text--amber"

  amber50 :: ClassName
  amber50 = className "mdl-color-text--amber-50"

  amber100 :: ClassName
  amber100 = className "mdl-color-text--amber-100"

  amber200 :: ClassName
  amber200 = className "mdl-color-text--amber-200"

  amber300 :: ClassName
  amber300 = className "mdl-color-text--amber-300"

  amber400 :: ClassName
  amber400 = className "mdl-color-text--amber-400"

  amber500 :: ClassName
  amber500 = className "mdl-color-text--amber-500"

  amber600 :: ClassName
  amber600 = className "mdl-color-text--amber-600"

  amber700 :: ClassName
  amber700 = className "mdl-color-text--amber-700"

  amber800 :: ClassName
  amber800 = className "mdl-color-text--amber-800"

  amber900 :: ClassName
  amber900 = className "mdl-color-text--amber-900"

  amberA100 :: ClassName
  amberA100 = className "mdl-color-text--amber-A100"

  amberA200 :: ClassName
  amberA200 = className "mdl-color-text--amber-A200"

  amberA400 :: ClassName
  amberA400 = className "mdl-color-text--amber-A400"

  amberA700 :: ClassName
  amberA700 = className "mdl-color-text--amber-A700"

  orange :: ClassName
  orange = className "mdl-color-text--orange"

  orange50 :: ClassName
  orange50 = className "mdl-color-text--orange-50"

  orange100 :: ClassName
  orange100 = className "mdl-color-text--orange-100"

  orange200 :: ClassName
  orange200 = className "mdl-color-text--orange-200"

  orange300 :: ClassName
  orange300 = className "mdl-color-text--orange-300"

  orange400 :: ClassName
  orange400 = className "mdl-color-text--orange-400"

  orange500 :: ClassName
  orange500 = className "mdl-color-text--orange-500"

  orange600 :: ClassName
  orange600 = className "mdl-color-text--orange-600"

  orange700 :: ClassName
  orange700 = className "mdl-color-text--orange-700"

  orange800 :: ClassName
  orange800 = className "mdl-color-text--orange-800"

  orange900 :: ClassName
  orange900 = className "mdl-color-text--orange-900"

  orangeA100 :: ClassName
  orangeA100 = className "mdl-color-text--orange-A100"

  orangeA200 :: ClassName
  orangeA200 = className "mdl-color-text--orange-A200"

  orangeA400 :: ClassName
  orangeA400 = className "mdl-color-text--orange-A400"

  orangeA700 :: ClassName
  orangeA700 = className "mdl-color-text--orange-A700"

  deepOrange :: ClassName
  deepOrange = className "mdl-color-text--deep-orange"

  deepOrange50 :: ClassName
  deepOrange50 = className "mdl-color-text--deep-orange-50"

  deepOrange100 :: ClassName
  deepOrange100 = className "mdl-color-text--deep-orange-100"

  deepOrange200 :: ClassName
  deepOrange200 = className "mdl-color-text--deep-orange-200"

  deepOrange300 :: ClassName
  deepOrange300 = className "mdl-color-text--deep-orange-300"

  deepOrange400 :: ClassName
  deepOrange400 = className "mdl-color-text--deep-orange-400"

  deepOrange500 :: ClassName
  deepOrange500 = className "mdl-color-text--deep-orange-500"

  deepOrange600 :: ClassName
  deepOrange600 = className "mdl-color-text--deep-orange-600"

  deepOrange700 :: ClassName
  deepOrange700 = className "mdl-color-text--deep-orange-700"

  deepOrange800 :: ClassName
  deepOrange800 = className "mdl-color-text--deep-orange-800"

  deepOrange900 :: ClassName
  deepOrange900 = className "mdl-color-text--deep-orange-900"

  deepOrangeA100 :: ClassName
  deepOrangeA100 = className "mdl-color-text--deep-orange-A100"

  deepOrangeA200 :: ClassName
  deepOrangeA200 = className "mdl-color-text--deep-orange-A200"

  deepOrangeA400 :: ClassName
  deepOrangeA400 = className "mdl-color-text--deep-orange-A400"

  deepOrangeA700 :: ClassName
  deepOrangeA700 = className "mdl-color-text--deep-orange-A700"

  brown :: ClassName
  brown = className "mdl-color-text--brown"

  brown50 :: ClassName
  brown50 = className "mdl-color-text--brown-50"

  brown100 :: ClassName
  brown100 = className "mdl-color-text--brown-100"

  brown200 :: ClassName
  brown200 = className "mdl-color-text--brown-200"

  brown300 :: ClassName
  brown300 = className "mdl-color-text--brown-300"

  brown400 :: ClassName
  brown400 = className "mdl-color-text--brown-400"

  brown500 :: ClassName
  brown500 = className "mdl-color-text--brown-500"

  brown600 :: ClassName
  brown600 = className "mdl-color-text--brown-600"

  brown700 :: ClassName
  brown700 = className "mdl-color-text--brown-700"

  brown800 :: ClassName
  brown800 = className "mdl-color-text--brown-800"

  brown900 :: ClassName
  brown900 = className "mdl-color-text--brown-900"

  grey :: ClassName
  grey = className "mdl-color-text--grey"

  grey50 :: ClassName
  grey50 = className "mdl-color-text--grey-50"

  grey100 :: ClassName
  grey100 = className "mdl-color-text--grey-100"

  grey200 :: ClassName
  grey200 = className "mdl-color-text--grey-200"

  grey300 :: ClassName
  grey300 = className "mdl-color-text--grey-300"

  grey400 :: ClassName
  grey400 = className "mdl-color-text--grey-400"

  grey500 :: ClassName
  grey500 = className "mdl-color-text--grey-500"

  grey600 :: ClassName
  grey600 = className "mdl-color-text--grey-600"

  grey700 :: ClassName
  grey700 = className "mdl-color-text--grey-700"

  grey800 :: ClassName
  grey800 = className "mdl-color-text--grey-800"

  grey900 :: ClassName
  grey900 = className "mdl-color-text--grey-900"

  blueGrey :: ClassName
  blueGrey = className "mdl-color-text--blue-grey"

  blueGrey50 :: ClassName
  blueGrey50 = className "mdl-color-text--blue-grey-50"

  blueGrey100 :: ClassName
  blueGrey100 = className "mdl-color-text--blue-grey-100"

  blueGrey200 :: ClassName
  blueGrey200 = className "mdl-color-text--blue-grey-200"

  blueGrey300 :: ClassName
  blueGrey300 = className "mdl-color-text--blue-grey-300"

  blueGrey400 :: ClassName
  blueGrey400 = className "mdl-color-text--blue-grey-400"

  blueGrey500 :: ClassName
  blueGrey500 = className "mdl-color-text--blue-grey-500"

  blueGrey600 :: ClassName
  blueGrey600 = className "mdl-color-text--blue-grey-600"

  blueGrey700 :: ClassName
  blueGrey700 = className "mdl-color-text--blue-grey-700"

  blueGrey800 :: ClassName
  blueGrey800 = className "mdl-color-text--blue-grey-800"

  blueGrey900 :: ClassName
  blueGrey900 = className "mdl-color-text--blue-grey-900"

  black :: ClassName
  black = className "mdl-color-text--black"

  white :: ClassName
  white = className "mdl-color-text--white"

  primary :: ClassName
  primary = className "mdl-color-text--primary"

  primaryContrast :: ClassName
  primaryContrast = className "mdl-color-text--primary-contrast"

  primaryDark :: ClassName
  primaryDark = className "mdl-color-text--primary-dark"

  accent :: ClassName
  accent = className "mdl-color-text--accent"

  accentContrast :: ClassName
  accentContrast = className "mdl-color-text--accent-contrast"


module MDL.Color where

  import Halogen.HTML.Core (ClassName, className)

  red :: ClassName
  red = className "mdl-color--red"

  red50 :: ClassName
  red50 = className "mdl-color--red-50"

  red100 :: ClassName
  red100 = className "mdl-color--red-100"

  red200 :: ClassName
  red200 = className "mdl-color--red-200"

  red300 :: ClassName
  red300 = className "mdl-color--red-300"

  red400 :: ClassName
  red400 = className "mdl-color--red-400"

  red500 :: ClassName
  red500 = className "mdl-color--red-500"

  red600 :: ClassName
  red600 = className "mdl-color--red-600"

  red700 :: ClassName
  red700 = className "mdl-color--red-700"

  red800 :: ClassName
  red800 = className "mdl-color--red-800"

  red900 :: ClassName
  red900 = className "mdl-color--red-900"

  redA100 :: ClassName
  redA100 = className "mdl-color--red-A100"

  redA200 :: ClassName
  redA200 = className "mdl-color--red-A200"

  redA400 :: ClassName
  redA400 = className "mdl-color--red-A400"

  redA700 :: ClassName
  redA700 = className "mdl-color--red-A700"

  pink :: ClassName
  pink = className "mdl-color--pink"

  pink50 :: ClassName
  pink50 = className "mdl-color--pink-50"

  pink100 :: ClassName
  pink100 = className "mdl-color--pink-100"

  pink200 :: ClassName
  pink200 = className "mdl-color--pink-200"

  pink300 :: ClassName
  pink300 = className "mdl-color--pink-300"

  pink400 :: ClassName
  pink400 = className "mdl-color--pink-400"

  pink500 :: ClassName
  pink500 = className "mdl-color--pink-500"

  pink600 :: ClassName
  pink600 = className "mdl-color--pink-600"

  pink700 :: ClassName
  pink700 = className "mdl-color--pink-700"

  pink800 :: ClassName
  pink800 = className "mdl-color--pink-800"

  pink900 :: ClassName
  pink900 = className "mdl-color--pink-900"

  pinkA100 :: ClassName
  pinkA100 = className "mdl-color--pink-A100"

  pinkA200 :: ClassName
  pinkA200 = className "mdl-color--pink-A200"

  pinkA400 :: ClassName
  pinkA400 = className "mdl-color--pink-A400"

  pinkA700 :: ClassName
  pinkA700 = className "mdl-color--pink-A700"

  purple :: ClassName
  purple = className "mdl-color--purple"

  purple50 :: ClassName
  purple50 = className "mdl-color--purple-50"

  purple100 :: ClassName
  purple100 = className "mdl-color--purple-100"

  purple200 :: ClassName
  purple200 = className "mdl-color--purple-200"

  purple300 :: ClassName
  purple300 = className "mdl-color--purple-300"

  purple400 :: ClassName
  purple400 = className "mdl-color--purple-400"

  purple500 :: ClassName
  purple500 = className "mdl-color--purple-500"

  purple600 :: ClassName
  purple600 = className "mdl-color--purple-600"

  purple700 :: ClassName
  purple700 = className "mdl-color--purple-700"

  purple800 :: ClassName
  purple800 = className "mdl-color--purple-800"

  purple900 :: ClassName
  purple900 = className "mdl-color--purple-900"

  purpleA100 :: ClassName
  purpleA100 = className "mdl-color--purple-A100"

  purpleA200 :: ClassName
  purpleA200 = className "mdl-color--purple-A200"

  purpleA400 :: ClassName
  purpleA400 = className "mdl-color--purple-A400"

  purpleA700 :: ClassName
  purpleA700 = className "mdl-color--purple-A700"

  deepPurple :: ClassName
  deepPurple = className "mdl-color--deep-purple"

  deepPurple50 :: ClassName
  deepPurple50 = className "mdl-color--deep-purple-50"

  deepPurple100 :: ClassName
  deepPurple100 = className "mdl-color--deep-purple-100"

  deepPurple200 :: ClassName
  deepPurple200 = className "mdl-color--deep-purple-200"

  deepPurple300 :: ClassName
  deepPurple300 = className "mdl-color--deep-purple-300"

  deepPurple400 :: ClassName
  deepPurple400 = className "mdl-color--deep-purple-400"

  deepPurple500 :: ClassName
  deepPurple500 = className "mdl-color--deep-purple-500"

  deepPurple600 :: ClassName
  deepPurple600 = className "mdl-color--deep-purple-600"

  deepPurple700 :: ClassName
  deepPurple700 = className "mdl-color--deep-purple-700"

  deepPurple800 :: ClassName
  deepPurple800 = className "mdl-color--deep-purple-800"

  deepPurple900 :: ClassName
  deepPurple900 = className "mdl-color--deep-purple-900"

  deepPurpleA100 :: ClassName
  deepPurpleA100 = className "mdl-color--deep-purple-A100"

  deepPurpleA200 :: ClassName
  deepPurpleA200 = className "mdl-color--deep-purple-A200"

  deepPurpleA400 :: ClassName
  deepPurpleA400 = className "mdl-color--deep-purple-A400"

  deepPurpleA700 :: ClassName
  deepPurpleA700 = className "mdl-color--deep-purple-A700"

  indigo :: ClassName
  indigo = className "mdl-color--indigo"

  indigo50 :: ClassName
  indigo50 = className "mdl-color--indigo-50"

  indigo100 :: ClassName
  indigo100 = className "mdl-color--indigo-100"

  indigo200 :: ClassName
  indigo200 = className "mdl-color--indigo-200"

  indigo300 :: ClassName
  indigo300 = className "mdl-color--indigo-300"

  indigo400 :: ClassName
  indigo400 = className "mdl-color--indigo-400"

  indigo500 :: ClassName
  indigo500 = className "mdl-color--indigo-500"

  indigo600 :: ClassName
  indigo600 = className "mdl-color--indigo-600"

  indigo700 :: ClassName
  indigo700 = className "mdl-color--indigo-700"

  indigo800 :: ClassName
  indigo800 = className "mdl-color--indigo-800"

  indigo900 :: ClassName
  indigo900 = className "mdl-color--indigo-900"

  indigoA100 :: ClassName
  indigoA100 = className "mdl-color--indigo-A100"

  indigoA200 :: ClassName
  indigoA200 = className "mdl-color--indigo-A200"

  indigoA400 :: ClassName
  indigoA400 = className "mdl-color--indigo-A400"

  indigoA700 :: ClassName
  indigoA700 = className "mdl-color--indigo-A700"

  blue :: ClassName
  blue = className "mdl-color--blue"

  blue50 :: ClassName
  blue50 = className "mdl-color--blue-50"

  blue100 :: ClassName
  blue100 = className "mdl-color--blue-100"

  blue200 :: ClassName
  blue200 = className "mdl-color--blue-200"

  blue300 :: ClassName
  blue300 = className "mdl-color--blue-300"

  blue400 :: ClassName
  blue400 = className "mdl-color--blue-400"

  blue500 :: ClassName
  blue500 = className "mdl-color--blue-500"

  blue600 :: ClassName
  blue600 = className "mdl-color--blue-600"

  blue700 :: ClassName
  blue700 = className "mdl-color--blue-700"

  blue800 :: ClassName
  blue800 = className "mdl-color--blue-800"

  blue900 :: ClassName
  blue900 = className "mdl-color--blue-900"

  blueA100 :: ClassName
  blueA100 = className "mdl-color--blue-A100"

  blueA200 :: ClassName
  blueA200 = className "mdl-color--blue-A200"

  blueA400 :: ClassName
  blueA400 = className "mdl-color--blue-A400"

  blueA700 :: ClassName
  blueA700 = className "mdl-color--blue-A700"

  lightBlue :: ClassName
  lightBlue = className "mdl-color--light-blue"

  lightBlue50 :: ClassName
  lightBlue50 = className "mdl-color--light-blue-50"

  lightBlue100 :: ClassName
  lightBlue100 = className "mdl-color--light-blue-100"

  lightBlue200 :: ClassName
  lightBlue200 = className "mdl-color--light-blue-200"

  lightBlue300 :: ClassName
  lightBlue300 = className "mdl-color--light-blue-300"

  lightBlue400 :: ClassName
  lightBlue400 = className "mdl-color--light-blue-400"

  lightBlue500 :: ClassName
  lightBlue500 = className "mdl-color--light-blue-500"

  lightBlue600 :: ClassName
  lightBlue600 = className "mdl-color--light-blue-600"

  lightBlue700 :: ClassName
  lightBlue700 = className "mdl-color--light-blue-700"

  lightBlue800 :: ClassName
  lightBlue800 = className "mdl-color--light-blue-800"

  lightBlue900 :: ClassName
  lightBlue900 = className "mdl-color--light-blue-900"

  lightBlueA100 :: ClassName
  lightBlueA100 = className "mdl-color--light-blue-A100"

  lightBlueA200 :: ClassName
  lightBlueA200 = className "mdl-color--light-blue-A200"

  lightBlueA400 :: ClassName
  lightBlueA400 = className "mdl-color--light-blue-A400"

  lightBlueA700 :: ClassName
  lightBlueA700 = className "mdl-color--light-blue-A700"

  cyan :: ClassName
  cyan = className "mdl-color--cyan"

  cyan50 :: ClassName
  cyan50 = className "mdl-color--cyan-50"

  cyan100 :: ClassName
  cyan100 = className "mdl-color--cyan-100"

  cyan200 :: ClassName
  cyan200 = className "mdl-color--cyan-200"

  cyan300 :: ClassName
  cyan300 = className "mdl-color--cyan-300"

  cyan400 :: ClassName
  cyan400 = className "mdl-color--cyan-400"

  cyan500 :: ClassName
  cyan500 = className "mdl-color--cyan-500"

  cyan600 :: ClassName
  cyan600 = className "mdl-color--cyan-600"

  cyan700 :: ClassName
  cyan700 = className "mdl-color--cyan-700"

  cyan800 :: ClassName
  cyan800 = className "mdl-color--cyan-800"

  cyan900 :: ClassName
  cyan900 = className "mdl-color--cyan-900"

  cyanA100 :: ClassName
  cyanA100 = className "mdl-color--cyan-A100"

  cyanA200 :: ClassName
  cyanA200 = className "mdl-color--cyan-A200"

  cyanA400 :: ClassName
  cyanA400 = className "mdl-color--cyan-A400"

  cyanA700 :: ClassName
  cyanA700 = className "mdl-color--cyan-A700"

  teal :: ClassName
  teal = className "mdl-color--teal"

  teal50 :: ClassName
  teal50 = className "mdl-color--teal-50"

  teal100 :: ClassName
  teal100 = className "mdl-color--teal-100"

  teal200 :: ClassName
  teal200 = className "mdl-color--teal-200"

  teal300 :: ClassName
  teal300 = className "mdl-color--teal-300"

  teal400 :: ClassName
  teal400 = className "mdl-color--teal-400"

  teal500 :: ClassName
  teal500 = className "mdl-color--teal-500"

  teal600 :: ClassName
  teal600 = className "mdl-color--teal-600"

  teal700 :: ClassName
  teal700 = className "mdl-color--teal-700"

  teal800 :: ClassName
  teal800 = className "mdl-color--teal-800"

  teal900 :: ClassName
  teal900 = className "mdl-color--teal-900"

  tealA100 :: ClassName
  tealA100 = className "mdl-color--teal-A100"

  tealA200 :: ClassName
  tealA200 = className "mdl-color--teal-A200"

  tealA400 :: ClassName
  tealA400 = className "mdl-color--teal-A400"

  tealA700 :: ClassName
  tealA700 = className "mdl-color--teal-A700"

  green :: ClassName
  green = className "mdl-color--green"

  green50 :: ClassName
  green50 = className "mdl-color--green-50"

  green100 :: ClassName
  green100 = className "mdl-color--green-100"

  green200 :: ClassName
  green200 = className "mdl-color--green-200"

  green300 :: ClassName
  green300 = className "mdl-color--green-300"

  green400 :: ClassName
  green400 = className "mdl-color--green-400"

  green500 :: ClassName
  green500 = className "mdl-color--green-500"

  green600 :: ClassName
  green600 = className "mdl-color--green-600"

  green700 :: ClassName
  green700 = className "mdl-color--green-700"

  green800 :: ClassName
  green800 = className "mdl-color--green-800"

  green900 :: ClassName
  green900 = className "mdl-color--green-900"

  greenA100 :: ClassName
  greenA100 = className "mdl-color--green-A100"

  greenA200 :: ClassName
  greenA200 = className "mdl-color--green-A200"

  greenA400 :: ClassName
  greenA400 = className "mdl-color--green-A400"

  greenA700 :: ClassName
  greenA700 = className "mdl-color--green-A700"

  lightGreen :: ClassName
  lightGreen = className "mdl-color--light-green"

  lightGreen50 :: ClassName
  lightGreen50 = className "mdl-color--light-green-50"

  lightGreen100 :: ClassName
  lightGreen100 = className "mdl-color--light-green-100"

  lightGreen200 :: ClassName
  lightGreen200 = className "mdl-color--light-green-200"

  lightGreen300 :: ClassName
  lightGreen300 = className "mdl-color--light-green-300"

  lightGreen400 :: ClassName
  lightGreen400 = className "mdl-color--light-green-400"

  lightGreen500 :: ClassName
  lightGreen500 = className "mdl-color--light-green-500"

  lightGreen600 :: ClassName
  lightGreen600 = className "mdl-color--light-green-600"

  lightGreen700 :: ClassName
  lightGreen700 = className "mdl-color--light-green-700"

  lightGreen800 :: ClassName
  lightGreen800 = className "mdl-color--light-green-800"

  lightGreen900 :: ClassName
  lightGreen900 = className "mdl-color--light-green-900"

  lightGreenA100 :: ClassName
  lightGreenA100 = className "mdl-color--light-green-A100"

  lightGreenA200 :: ClassName
  lightGreenA200 = className "mdl-color--light-green-A200"

  lightGreenA400 :: ClassName
  lightGreenA400 = className "mdl-color--light-green-A400"

  lightGreenA700 :: ClassName
  lightGreenA700 = className "mdl-color--light-green-A700"

  lime :: ClassName
  lime = className "mdl-color--lime"

  lime50 :: ClassName
  lime50 = className "mdl-color--lime-50"

  lime100 :: ClassName
  lime100 = className "mdl-color--lime-100"

  lime200 :: ClassName
  lime200 = className "mdl-color--lime-200"

  lime300 :: ClassName
  lime300 = className "mdl-color--lime-300"

  lime400 :: ClassName
  lime400 = className "mdl-color--lime-400"

  lime500 :: ClassName
  lime500 = className "mdl-color--lime-500"

  lime600 :: ClassName
  lime600 = className "mdl-color--lime-600"

  lime700 :: ClassName
  lime700 = className "mdl-color--lime-700"

  lime800 :: ClassName
  lime800 = className "mdl-color--lime-800"

  lime900 :: ClassName
  lime900 = className "mdl-color--lime-900"

  limeA100 :: ClassName
  limeA100 = className "mdl-color--lime-A100"

  limeA200 :: ClassName
  limeA200 = className "mdl-color--lime-A200"

  limeA400 :: ClassName
  limeA400 = className "mdl-color--lime-A400"

  limeA700 :: ClassName
  limeA700 = className "mdl-color--lime-A700"

  yellow :: ClassName
  yellow = className "mdl-color--yellow"

  yellow50 :: ClassName
  yellow50 = className "mdl-color--yellow-50"

  yellow100 :: ClassName
  yellow100 = className "mdl-color--yellow-100"

  yellow200 :: ClassName
  yellow200 = className "mdl-color--yellow-200"

  yellow300 :: ClassName
  yellow300 = className "mdl-color--yellow-300"

  yellow400 :: ClassName
  yellow400 = className "mdl-color--yellow-400"

  yellow500 :: ClassName
  yellow500 = className "mdl-color--yellow-500"

  yellow600 :: ClassName
  yellow600 = className "mdl-color--yellow-600"

  yellow700 :: ClassName
  yellow700 = className "mdl-color--yellow-700"

  yellow800 :: ClassName
  yellow800 = className "mdl-color--yellow-800"

  yellow900 :: ClassName
  yellow900 = className "mdl-color--yellow-900"

  yellowA100 :: ClassName
  yellowA100 = className "mdl-color--yellow-A100"

  yellowA200 :: ClassName
  yellowA200 = className "mdl-color--yellow-A200"

  yellowA400 :: ClassName
  yellowA400 = className "mdl-color--yellow-A400"

  yellowA700 :: ClassName
  yellowA700 = className "mdl-color--yellow-A700"

  amber :: ClassName
  amber = className "mdl-color--amber"

  amber50 :: ClassName
  amber50 = className "mdl-color--amber-50"

  amber100 :: ClassName
  amber100 = className "mdl-color--amber-100"

  amber200 :: ClassName
  amber200 = className "mdl-color--amber-200"

  amber300 :: ClassName
  amber300 = className "mdl-color--amber-300"

  amber400 :: ClassName
  amber400 = className "mdl-color--amber-400"

  amber500 :: ClassName
  amber500 = className "mdl-color--amber-500"

  amber600 :: ClassName
  amber600 = className "mdl-color--amber-600"

  amber700 :: ClassName
  amber700 = className "mdl-color--amber-700"

  amber800 :: ClassName
  amber800 = className "mdl-color--amber-800"

  amber900 :: ClassName
  amber900 = className "mdl-color--amber-900"

  amberA100 :: ClassName
  amberA100 = className "mdl-color--amber-A100"

  amberA200 :: ClassName
  amberA200 = className "mdl-color--amber-A200"

  amberA400 :: ClassName
  amberA400 = className "mdl-color--amber-A400"

  amberA700 :: ClassName
  amberA700 = className "mdl-color--amber-A700"

  orange :: ClassName
  orange = className "mdl-color--orange"

  orange50 :: ClassName
  orange50 = className "mdl-color--orange-50"

  orange100 :: ClassName
  orange100 = className "mdl-color--orange-100"

  orange200 :: ClassName
  orange200 = className "mdl-color--orange-200"

  orange300 :: ClassName
  orange300 = className "mdl-color--orange-300"

  orange400 :: ClassName
  orange400 = className "mdl-color--orange-400"

  orange500 :: ClassName
  orange500 = className "mdl-color--orange-500"

  orange600 :: ClassName
  orange600 = className "mdl-color--orange-600"

  orange700 :: ClassName
  orange700 = className "mdl-color--orange-700"

  orange800 :: ClassName
  orange800 = className "mdl-color--orange-800"

  orange900 :: ClassName
  orange900 = className "mdl-color--orange-900"

  orangeA100 :: ClassName
  orangeA100 = className "mdl-color--orange-A100"

  orangeA200 :: ClassName
  orangeA200 = className "mdl-color--orange-A200"

  orangeA400 :: ClassName
  orangeA400 = className "mdl-color--orange-A400"

  orangeA700 :: ClassName
  orangeA700 = className "mdl-color--orange-A700"

  deepOrange :: ClassName
  deepOrange = className "mdl-color--deep-orange"

  deepOrange50 :: ClassName
  deepOrange50 = className "mdl-color--deep-orange-50"

  deepOrange100 :: ClassName
  deepOrange100 = className "mdl-color--deep-orange-100"

  deepOrange200 :: ClassName
  deepOrange200 = className "mdl-color--deep-orange-200"

  deepOrange300 :: ClassName
  deepOrange300 = className "mdl-color--deep-orange-300"

  deepOrange400 :: ClassName
  deepOrange400 = className "mdl-color--deep-orange-400"

  deepOrange500 :: ClassName
  deepOrange500 = className "mdl-color--deep-orange-500"

  deepOrange600 :: ClassName
  deepOrange600 = className "mdl-color--deep-orange-600"

  deepOrange700 :: ClassName
  deepOrange700 = className "mdl-color--deep-orange-700"

  deepOrange800 :: ClassName
  deepOrange800 = className "mdl-color--deep-orange-800"

  deepOrange900 :: ClassName
  deepOrange900 = className "mdl-color--deep-orange-900"

  deepOrangeA100 :: ClassName
  deepOrangeA100 = className "mdl-color--deep-orange-A100"

  deepOrangeA200 :: ClassName
  deepOrangeA200 = className "mdl-color--deep-orange-A200"

  deepOrangeA400 :: ClassName
  deepOrangeA400 = className "mdl-color--deep-orange-A400"

  deepOrangeA700 :: ClassName
  deepOrangeA700 = className "mdl-color--deep-orange-A700"

  brown :: ClassName
  brown = className "mdl-color--brown"

  brown50 :: ClassName
  brown50 = className "mdl-color--brown-50"

  brown100 :: ClassName
  brown100 = className "mdl-color--brown-100"

  brown200 :: ClassName
  brown200 = className "mdl-color--brown-200"

  brown300 :: ClassName
  brown300 = className "mdl-color--brown-300"

  brown400 :: ClassName
  brown400 = className "mdl-color--brown-400"

  brown500 :: ClassName
  brown500 = className "mdl-color--brown-500"

  brown600 :: ClassName
  brown600 = className "mdl-color--brown-600"

  brown700 :: ClassName
  brown700 = className "mdl-color--brown-700"

  brown800 :: ClassName
  brown800 = className "mdl-color--brown-800"

  brown900 :: ClassName
  brown900 = className "mdl-color--brown-900"

  grey :: ClassName
  grey = className "mdl-color--grey"

  grey50 :: ClassName
  grey50 = className "mdl-color--grey-50"

  grey100 :: ClassName
  grey100 = className "mdl-color--grey-100"

  grey200 :: ClassName
  grey200 = className "mdl-color--grey-200"

  grey300 :: ClassName
  grey300 = className "mdl-color--grey-300"

  grey400 :: ClassName
  grey400 = className "mdl-color--grey-400"

  grey500 :: ClassName
  grey500 = className "mdl-color--grey-500"

  grey600 :: ClassName
  grey600 = className "mdl-color--grey-600"

  grey700 :: ClassName
  grey700 = className "mdl-color--grey-700"

  grey800 :: ClassName
  grey800 = className "mdl-color--grey-800"

  grey900 :: ClassName
  grey900 = className "mdl-color--grey-900"

  blueGrey :: ClassName
  blueGrey = className "mdl-color--blue-grey"

  blueGrey50 :: ClassName
  blueGrey50 = className "mdl-color--blue-grey-50"

  blueGrey100 :: ClassName
  blueGrey100 = className "mdl-color--blue-grey-100"

  blueGrey200 :: ClassName
  blueGrey200 = className "mdl-color--blue-grey-200"

  blueGrey300 :: ClassName
  blueGrey300 = className "mdl-color--blue-grey-300"

  blueGrey400 :: ClassName
  blueGrey400 = className "mdl-color--blue-grey-400"

  blueGrey500 :: ClassName
  blueGrey500 = className "mdl-color--blue-grey-500"

  blueGrey600 :: ClassName
  blueGrey600 = className "mdl-color--blue-grey-600"

  blueGrey700 :: ClassName
  blueGrey700 = className "mdl-color--blue-grey-700"

  blueGrey800 :: ClassName
  blueGrey800 = className "mdl-color--blue-grey-800"

  blueGrey900 :: ClassName
  blueGrey900 = className "mdl-color--blue-grey-900"

  black :: ClassName
  black = className "mdl-color--black"

  white :: ClassName
  white = className "mdl-color--white"

  primary :: ClassName
  primary = className "mdl-color--primary"

  primaryContrast :: ClassName
  primaryContrast = className "mdl-color--primary-contrast"

  primaryDark :: ClassName
  primaryDark = className "mdl-color--primary-dark"

  accent :: ClassName
  accent = className "mdl-color--accent"

  accentContrast :: ClassName
  accentContrast = className "mdl-color--accent-contrast"


module MDL.Animation where

  import Halogen.HTML.Core (ClassName, className)

  default :: ClassName
  default = className "mdl-animation--default"

  fastOutSlowIn :: ClassName
  fastOutSlowIn = className "mdl-animation--fast-out-slow-in"

  linearOutSlowIn :: ClassName
  linearOutSlowIn = className "mdl-animation--linear-out-slow-in"

  fastOutLinearIn :: ClassName
  fastOutLinearIn = className "mdl-animation--fast-out-linear-in"


module MDL.Badge where

  import Halogen.HTML.Core (ClassName, className)

  noBackground :: ClassName
  noBackground = className "mdl-badge--no-background"

  overlap :: ClassName
  overlap = className "mdl-badge--overlap"


module MDL.Button where

  import Halogen.HTML.Core (ClassName, className)

  colored :: ClassName
  colored = className "mdl-button--colored"

  raised :: ClassName
  raised = className "mdl-button--raised"

  fab :: ClassName
  fab = className "mdl-button--fab"

  miniFab :: ClassName
  miniFab = className "mdl-button--mini-fab"

  icon :: ClassName
  icon = className "mdl-button--icon"

  miniIcon :: ClassName
  miniIcon = className "mdl-button--mini-icon"

  disabled :: ClassName
  disabled = className "mdl-button--disabled"

  primary :: ClassName
  primary = className "mdl-button--primary"

  accent :: ClassName
  accent = className "mdl-button--accent"


module MDL.Card where

  import Halogen.HTML.Core (ClassName, className)

  border :: ClassName
  border = className "mdl-card--border"

  expand :: ClassName
  expand = className "mdl-card--expand"


module MDL.MegaFooter where

  import Halogen.HTML.Core (ClassName, className)

  topSection :: ClassName
  topSection = className "mdl-mega-footer--top-section"

  middleSection :: ClassName
  middleSection = className "mdl-mega-footer--middle-section"

  bottomSection :: ClassName
  bottomSection = className "mdl-mega-footer--bottom-section"

  leftSection :: ClassName
  leftSection = className "mdl-mega-footer--left-section"

  rightSection :: ClassName
  rightSection = className "mdl-mega-footer--right-section"

  socialBtn :: ClassName
  socialBtn = className "mdl-mega-footer--social-btn"

  dropDownSection :: ClassName
  dropDownSection = className "mdl-mega-footer--drop-down-section"

  headingCheckbox :: ClassName
  headingCheckbox = className "mdl-mega-footer--heading-checkbox"

  heading :: ClassName
  heading = className "mdl-mega-footer--heading"

  linkList :: ClassName
  linkList = className "mdl-mega-footer--link-list"


module MDL.MiniFooter where

  import Halogen.HTML.Core (ClassName, className)

  linkList :: ClassName
  linkList = className "mdl-mini-footer--link-list"

  leftSection :: ClassName
  leftSection = className "mdl-mini-footer--left-section"

  rightSection :: ClassName
  rightSection = className "mdl-mini-footer--right-section"

  socialBtn :: ClassName
  socialBtn = className "mdl-mini-footer--social-btn"


module MDL.Menu where

  import Halogen.HTML.Core (ClassName, className)

  bottomRight :: ClassName
  bottomRight = className "mdl-menu--bottom-right"

  topLeft :: ClassName
  topLeft = className "mdl-menu--top-left"

  topRight :: ClassName
  topRight = className "mdl-menu--top-right"

  unaligned :: ClassName
  unaligned = className "mdl-menu--unaligned"


module MDL.Progress where

  import Halogen.HTML.Core (ClassName, className)

  indeterminate :: ClassName
  indeterminate = className "mdl-progress--indeterminate"


module MDL.Layout where

  import Halogen.HTML.Core (ClassName, className)

  noDrawerButton :: ClassName
  noDrawerButton = className "mdl-layout--no-drawer-button"

  fixedDrawer :: ClassName
  fixedDrawer = className "mdl-layout--fixed-drawer"

  fixedTabs :: ClassName
  fixedTabs = className "mdl-layout--fixed-tabs"

  noDesktopDrawerButton :: ClassName
  noDesktopDrawerButton = className "mdl-layout--no-desktop-drawer-button"


module MDL.Snackbar where

  import Halogen.HTML.Core (ClassName, className)

  active :: ClassName
  active = className "mdl-snackbar--active"


module MDL.Spinner where

  import Halogen.HTML.Core (ClassName, className)

  singleColor :: ClassName
  singleColor = className "mdl-spinner--single-color"


module MDL.Textfield where

  import Halogen.HTML.Core (ClassName, className)

  alignRight :: ClassName
  alignRight = className "mdl-textfield--align-right"

  fullWidth :: ClassName
  fullWidth = className "mdl-textfield--full-width"

  expandable :: ClassName
  expandable = className "mdl-textfield--expandable"

  floatingLabel :: ClassName
  floatingLabel = className "mdl-textfield--floating-label"


module MDL.Tooltip where

  import Halogen.HTML.Core (ClassName, className)

  large :: ClassName
  large = className "mdl-tooltip--large"


module MDL.Shadow where

  import Halogen.HTML.Core (ClassName, className)

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

  _16Dp :: ClassName
  _16Dp = className "mdl-shadow--16dp"

  _24Dp :: ClassName
  _24Dp = className "mdl-shadow--24dp"


module MDL.Grid where

  import Halogen.HTML.Core (ClassName, className)

  noSpacing :: ClassName
  noSpacing = className "mdl-grid--no-spacing"


module MDL.Cell where

  import Halogen.HTML.Core (ClassName, className)

  top :: ClassName
  top = className "mdl-cell--top"

  middle :: ClassName
  middle = className "mdl-cell--middle"

  bottom :: ClassName
  bottom = className "mdl-cell--bottom"

  stretch :: ClassName
  stretch = className "mdl-cell--stretch"

  order1 :: ClassName
  order1 = className "mdl-cell--order-1"

  order2 :: ClassName
  order2 = className "mdl-cell--order-2"

  order3 :: ClassName
  order3 = className "mdl-cell--order-3"

  order4 :: ClassName
  order4 = className "mdl-cell--order-4"

  order5 :: ClassName
  order5 = className "mdl-cell--order-5"

  order6 :: ClassName
  order6 = className "mdl-cell--order-6"

  order7 :: ClassName
  order7 = className "mdl-cell--order-7"

  order8 :: ClassName
  order8 = className "mdl-cell--order-8"

  order9 :: ClassName
  order9 = className "mdl-cell--order-9"

  order10 :: ClassName
  order10 = className "mdl-cell--order-10"

  order11 :: ClassName
  order11 = className "mdl-cell--order-11"

  order12 :: ClassName
  order12 = className "mdl-cell--order-12"


module MDL.DataTable.Cell where





module MDL.Dialog.Actions where





module MDL.List.Item where





module MDL.Menu.Item where





module MDL.Layout.Header where





