
#install packges for parsing mgf file
# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# 
# BiocManager::install("MsBackendMgf", force = TRUE)

######for the documentation of the package
#browseVignettes("MsBackendMgf")

#install.packages("BiocStyle")
# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# 
# BiocManager::install("BiocStyle")


#calling functions
library(Spectra)
library(BiocStyle)
library(BiocParallel)
register(SerialParam())
library(MsBackendMgf)


#parsing file 
sps <- Spectra("C:\\Users\\compu\\Desktop\\NASH.mgf", source = MsBackendMgf())
#spectraVariables(sps)
#the following line to extract pepmass(mass,intensity) and rtinseconds
sps$rtime
sps$precursorIntensity
sps$precursorMz
