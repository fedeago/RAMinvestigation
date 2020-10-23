
funs <- local({
    list(example = function(k) {
        Sys.sleep(10)
        k
    })
}, envir = baseenv())

