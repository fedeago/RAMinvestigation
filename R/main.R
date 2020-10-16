#'@export
#'@import SummarizedExperiment
#'@import parallel
main <- function(children){
  cl <- makePSOCKcluster(children)
  on.exit(stopCluster(cl), add = TRUE)
# Argument seq.int(children) is useless but needed by clusterApply
  clusterApply(cl,x = seq.int(children), fun = funs$example)
}
