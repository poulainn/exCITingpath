\name{loadDB}
\alias{loadDB}
\title{Returns the list of annotation in selected DB}
\usage{
loadDB(file_list=listDB())
}
\arguments{
  \item{file_list}{list of files or keywords to access databases annotations\describe{
  \item{"basic"}{"KEGG_2019_Human","BioCarta_2016","Reactome_2016"}
  \item{"GO"}{"GO_Biological_Process_2018","GO_Molecular_Function_2018","GO_Cellular_Component_2018"}
  \item{"TF"}{"TRRUST_Transcription_Factors_2019","Transcription_Factor_PPIs","ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X"}
}}

}
\description{
Returns the list of annotation in selected DB



    
}

\examples{
loadDB()
loadDB("basic")
loadDB(c("basic","GO"))
}
