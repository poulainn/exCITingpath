# exCITingPathways

Get the list of annotations from desired databases from [enrichR](https://amp.pharm.mssm.edu/Enrichr/#stats) and [MSigDB](http://software.broadinstitute.org/gsea/msigdb/index.jsp)

# How to use

Returns the list of availables databases in package
```R
listDB()
```

Returns (invisible) the list of annotations of selected databases

Full liste, equivalent to loadDB(listDB()) :
```R
loadDB()
```
To get KEGG_2019_Human, BioCarta_2016 and Reactome_2016 :
```R
loadDB("basic")
```
To get GO_Biological_Process_2018, GO_Molecular_Function_2018 and GO_Cellular_Component_2018 :
```R
loadDB("GO")
```
To get TRRUST_Transcription_Factors_2019, Transcription_Factor_PPIs and ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X :
```R
loadDB("TF")
```

Any combination of above keywords and databases names is possible.

## install
Dependencies 
```R
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("qusage")
```

install directly from the CIT gitlab
```R
devtools::install_url("https://gitlab.ligue-cancer.net/nicolas.poulain/excitingpath/-/archive/master/excitingpath-master.tar.gz")
```


