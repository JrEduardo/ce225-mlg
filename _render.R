
## Iscas para verificar o erro no Travis
cat("## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    capture.output(sessionInfo()),
    capture.output(dir()),
    "## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    sep = "\n")

## Compile os documentos
sapply(grep('.Rnw$', dir(), value = TRUE),
       function(x) {
           try(knitr::knit2pdf(x))
       })
