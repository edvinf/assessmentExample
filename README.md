# NEA cod assessment example
Somewhat simplified implementation of the NEA cod 2022 assessment, provided for developing sensitivity analysis. The slightly more complex official estimate is reported in https://www.hi.no/hi/nettrapporter/imr-pinro-en-2022-3.

The code is organized as an ICES-TAF project. Run the model by running the scripts in order:
1. data.R
2. model.R
3. report.R

or run TAF::sourceAll().

## Dependencies
The model is implemented in SAM: https://github.com/fishfollower/SAM
icesTAF is available on CRAN and can be installed with install.packages(icesTAF). Installing icesTAF also installs the package TAF.