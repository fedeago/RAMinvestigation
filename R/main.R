#'@export
#'@import SummarizedExperiment
#'@import parallel
main <- function(children){
  cl <- makePSOCKcluster(children)
  on.exit(stopCluster(cl), add = TRUE)
  f <- funs$example
  clusterExport(cl,"f", env = environment())
  clusterApply(cl,x = seq.int(children), "f")

}
