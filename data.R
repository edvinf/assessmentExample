## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)
library(stockassessment)

mkdir("data")

cn<-read.ices("bootstrap/data/cn.dat")
cw<-read.ices("bootstrap/data/cw.dat")
dw<-read.ices("bootstrap/data/dw.dat")
lf<-read.ices("bootstrap/data/lf.dat")
lw<-read.ices("bootstrap/data/lw.dat")
mo<-read.ices("bootstrap/data/mo.dat")
nm<-read.ices("bootstrap/data/nm.dat")
pf<-read.ices("bootstrap/data/pf.dat")
pm<-read.ices("bootstrap/data/pm.dat")
sw<-read.ices("bootstrap/data/sw.dat")
surveys<-read.ices("bootstrap/data/survey.dat")

cn[cn==1]<-NA  ## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! REMOVING 1's

dat<-setup.sam.data(surveys=surveys,
                    residual.fleet=cn, 
                    prop.mature=mo, 
                    stock.mean.weight=sw, 
                    catch.mean.weight=cw, 
                    dis.mean.weight=dw, 
                    land.mean.weight=lw,
                    prop.f=pf, 
                    prop.m=pm, 
                    natural.mortality=nm, 
                    land.frac=lf)


save(dat, file="data/data.RData")
