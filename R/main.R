#'@export
#'@import SummarizedExperiment
#'@import parallel
main <- function(children){
  cl <- makePSOCKcluster(children)
  on.exit(stopCluster(cl), add = TRUE)
  clusterApply(cl,x = seq.int(children), funs$example)
}
