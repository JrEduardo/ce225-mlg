
## Iscas para verificar o erro no Travis
cat("## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    capture.output(sessionInfo()),
    capture.output(dir()),
    "## @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ##",
    sep = "\n")

## ## Compile os documentos
## Dessa forma alguns objetos não são encontrados pelas funções,
## acarretando em erros no pdf (problema com environments, eu acredito)
## sapply(grep('.Rnw$', dir(), value = TRUE),
##        function(x) {
##            cat(ls(), sep = "\n")
##            try(knitr::knit2pdf(x))
##        })

knitr::knit2pdf("trab1.Rnw")
knitr::knit2pdf("trab3.Rnw")
knitr::knit2pdf("trab4.Rnw")
knitr::knit2pdf("trab5.Rnw")
