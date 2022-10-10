## Run analysis, write model results

## Before:
## After:

library(icesTAF)
library(stockassessment)

mkdir("model")

conf<-loadConf(dat,"cfg/model.cfg", patch=TRUE)
par<-defpar(dat,conf)
fit<-sam.fit(dat,conf,par)
if(fit$opt$convergence!=0) stop("Model did not converge.")

save(fit, file="model/model.RData")

