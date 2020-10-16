funs <- local(
  list(
    example = function(k) {
      Sys.sleep(10)
    }
  )
  , env= .GlobalEnv)

