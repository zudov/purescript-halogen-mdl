module MDL.DataTable.Header where

  import Halogen.HTML.Core (ClassName(..))

  _sortedAscending :: ClassName
  _sortedAscending = ClassName "mdl-data-table__header--sorted-ascending"

  _sortedDescending :: ClassName
  _sortedDescending = ClassName "mdl-data-table__header--sorted-descending"

