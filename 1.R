#see working directory and change to tmp file in documents (working insync with github)
getwd()
setwd('tmp_git')
#load file
data=read.csv('epiSEIHCRD_combAge.csv')
#make data show from 2020-03-01
data$t=as.Date(data$t,origin = '2020-03-01')

#july to december
data_sub=subset(data,subset = (t>='2020-07-01' & t<='2020-12-31'))
data_sub$t
