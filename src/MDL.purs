module MDL where
  import Prelude (Unit)
  import Control.Monad.Eff (Eff())

  import DOM (DOM())
  import DOM.HTML.Types (HTMLElement())

  import Halogen.HTML.Core (ClassName(..))
  
  foreign import upgradeElement :: forall eff. HTMLElement -> Eff (dom :: DOM | eff) Unit

  jsButton :: ClassName
  jsButton = ClassName "mdl-js-button"

  jsCheckbox :: ClassName
  jsCheckbox = ClassName "mdl-js-checkbox"

  jsIconToggle :: ClassName
  jsIconToggle = ClassName "mdl-js-icon-toggle"

  jsMenu :: ClassName
  jsMenu = ClassName "mdl-js-menu"

  jsProgress :: ClassName
  jsProgress = ClassName "mdl-js-progress"

  jsRadio :: ClassName
  jsRadio = ClassName "mdl-js-radio"

  jsSlider :: ClassName
  jsSlider = ClassName "mdl-js-slider"

  jsSpinner :: ClassName
  jsSpinner = ClassName "mdl-js-spinner"

  jsSwitch :: ClassName
  jsSwitch = ClassName "mdl-js-switch"

  jsTabs :: ClassName
  jsTabs = ClassName "mdl-js-tabs"

  jsTextfield :: ClassName
  jsTextfield = ClassName "mdl-js-textfield"

  jsLayout :: ClassName
  jsLayout = ClassName "mdl-js-layout"

  jsDataTable :: ClassName
  jsDataTable = ClassName "mdl-js-data-table"

  jsRippleEffect :: ClassName
  jsRippleEffect = ClassName "mdl-js-ripple-effect"

  accordion :: ClassName
  accordion = ClassName "mdl-accordion"

  badge :: ClassName
  badge = ClassName "mdl-badge"

  button :: ClassName
  button = ClassName "mdl-button"

  card :: ClassName
  card = ClassName "mdl-card"

  cell :: ClassName
  cell = ClassName "mdl-cell"

  checkbox :: ClassName
  checkbox = ClassName "mdl-checkbox"

  chip :: ClassName
  chip = ClassName "mdl-chip"

  dataTable :: ClassName
  dataTable = ClassName "mdl-data-table"

  dialog :: ClassName
  dialog = ClassName "mdl-dialog"

  dropdownMenu :: ClassName
  dropdownMenu = ClassName "mdl-dropdown-menu"

  grid :: ClassName
  grid = ClassName "mdl-grid"

  iconToggle :: ClassName
  iconToggle = ClassName "mdl-icon-toggle"

  item :: ClassName
  item = ClassName "mdl-item"

  layout :: ClassName
  layout = ClassName "mdl-layout"

  layoutIcon :: ClassName
  layoutIcon = ClassName "mdl-layout-icon"

  layoutSpacer :: ClassName
  layoutSpacer = ClassName "mdl-layout-spacer"

  layoutTitle :: ClassName
  layoutTitle = ClassName "mdl-layout-title"

  list :: ClassName
  list = ClassName "mdl-list"

  logo :: ClassName
  logo = ClassName "mdl-logo"

  megaFooter :: ClassName
  megaFooter = ClassName "mdl-mega-footer"

  menu :: ClassName
  menu = ClassName "mdl-menu"

  miniFooter :: ClassName
  miniFooter = ClassName "mdl-mini-footer"

  navigation :: ClassName
  navigation = ClassName "mdl-navigation"

  progress :: ClassName
  progress = ClassName "mdl-progress"

  radio :: ClassName
  radio = ClassName "mdl-radio"

  ripple :: ClassName
  ripple = ClassName "mdl-ripple"

  slider :: ClassName
  slider = ClassName "mdl-slider"

  snackbar :: ClassName
  snackbar = ClassName "mdl-snackbar"

  spinner :: ClassName
  spinner = ClassName "mdl-spinner"

  switch :: ClassName
  switch = ClassName "mdl-switch"

  tabs :: ClassName
  tabs = ClassName "mdl-tabs"

  textfield :: ClassName
  textfield = ClassName "mdl-textfield"

  tooltip :: ClassName
  tooltip = ClassName "mdl-tooltip"

