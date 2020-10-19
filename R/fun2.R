funs2 <- ocal(
  (function(){
    f_sub <- function(){
      Sys.sleep(10)
    }
  list(
    example = function(k) {
      f_sub
    }
  )
  })(), env= .GlobalEnv)
