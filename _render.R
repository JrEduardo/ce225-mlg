
## Iscas para verificar o erro no Travis
cat("## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    capture.output(sessionInfo()),
    ## capture.output(installed.packages()),
    capture.output(dir()),
    "## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    sep = "\n")

## Compile os documentos
sapply(grep('.Rnw$', dir(), value = TRUE), knitr::knit)
## knitr::knit2pdf("teste.Rnw")
