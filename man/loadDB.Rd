\name{loadDB}
\alias{loadDB}
\title{Returns the list of annotation in selected DB}
\usage{
loadDB(file_list=listDB())
}
\description{
Returns the list of annotation in selected DB

file_liste : list of characters containing the names of databases to load 
    keywords :  "basic" = "KEGG_2019_Human","BioCarta_2016","Reactome_2016"
                "GO"   = "GO_Biological_Process_2018","GO_Molecular_Function_2018","GO_Cellular_Component_2018"
                "TF"   = "TRRUST_Transcription_Factors_2019","Transcription_Factor_PPIs","ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X"
}
\examples{
loadDB("basic")
}
