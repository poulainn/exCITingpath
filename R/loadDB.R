

#returns file list of inst/extdata
listDB <- function() {
  ldf_1 <- list.files(system.file("extdata",  package = "exCITingpath"))
  return(ldf_1)
}

#load files in file_list as a list of genes sets
loadDB<-function(file_list=listDB()){
  if("allMSIG" %in% file_list){
    file_list=c(file_list,"c1.all.v7.4.symbols.gmt","c2.all.v7.4.symbols.gmt","c3.all.v7.4.symbols.gmt","c4.all.v7.4.symbols.gmt",
               "c5.all.v7.4.symbols.gmt","c6.all.v7.4.symbols.gmt","c7.all.v7.4.symbols.gmt","c8.all.v7.4.symbols.gmt",
               "h.all.v7.4.symbols.gmt")
    file_list=file_list[file_list!="allMSIG"]
  }
  if("basic" %in% file_list){
    file_list=c(file_list,"KEGG_2019_Human","BioCarta_2016","Reactome_2016")
    file_list=file_list[file_list!="basic"]
  }
  if("GO" %in% file_list){
    file_list=c(file_list,"GO_Biological_Process_2018","GO_Molecular_Function_2018","GO_Cellular_Component_2018")
    file_list=file_list[file_list!="GO"]
  }
  if("TF" %in% file_list){
    file_list=c(file_list,"TRRUST_Transcription_Factors_2019","Transcription_Factor_PPIs","ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X")
    file_list=file_list[file_list!="TF"]
  }
  DB=NULL
  file_list=file_list[file_list %in% listDB()]
  filetype=unlist(lapply(file_list, tools::file_ext))
  for (file in file_list[filetype=="" | filetype=="txt"]){
    # Read in the data
    x <- scan(system.file("extdata",file,package = "exCITingpath"), what="", sep="\n")
    # Separate elements by one or more whitepace
    y <- strsplit(x, "\t+")
    # Extract the first vector element and set it as the list element name concatenated with file name separated by "~"
    names(y) <- paste(file,sapply(y, `[[`, 1),sep="~")
    # Remove the first vector element from each list element
    y <- lapply(y, `[`, -1)
    DB=c(DB,y)
  }

  for (file in file_list[filetype=="gmt"]){
    y <- qusage::read.gmt(system.file("extdata",file,package = "exCITingpath"))
    names(y)<-paste0(file,"~",names(y))
    DB=c(DB,y)
  }

  DB <- lapply(DB,function(z) sort(unique(setdiff(z,c(NA,"","---")))))
  DB <- DB[unique(names(DB))]

  invisible(DB)

}





