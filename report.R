## Prepare plots and tables for report

## Before:
## After:

library(icesTAF)

mkdir("report")

write.table(ssbtable(fit), "report/ssbtable.csv", sep = ",")
write.table(fbartable(fit), "report/fbartable.csv", sep = ",")