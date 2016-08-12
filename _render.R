
## Iscas para verificar o erro no Travis
cat("\n", "## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##")
sessionInfo()
installed.packages()
dir()
cat("\n", "## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##")

## Compile os documentos
sapply(grep('.Rnw$', dir(), value = TRUE), knitr::knit2pdf)
