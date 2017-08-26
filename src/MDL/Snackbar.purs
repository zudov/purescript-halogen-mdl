module MDL.Snackbar where

  import Halogen.HTML.Core (ClassName(..))

  _active :: ClassName
  _active = ClassName "mdl-snackbar--active"

  action :: ClassName
  action = ClassName "mdl-snackbar__action"

  text :: ClassName
  text = ClassName "mdl-snackbar__text"

