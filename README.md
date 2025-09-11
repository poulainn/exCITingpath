# exCITingPathways

Get the list of annotations from desired databases from [enrichR](https://amp.pharm.mssm.edu/Enrichr/#stats) and [MSigDB](http://software.broadinstitute.org/gsea/msigdb/index.jsp)

# How to use

Returns the list of availables databases in package
```R
listDB()
```

<details>
  <summary>Databases list</summary>
  
 [1] "Achilles_fitness_decrease"                         "Achilles_fitness_increase"                         "Aging_Perturbations_from_GEO_down"                
  [4] "Aging_Perturbations_from_GEO_up"                   "Allen_Brain_Atlas_down"                            "Allen_Brain_Atlas_up"                             
  [7] "ARCHS4_IDG_Coexp"                                  "ARCHS4_Kinases_Coexp"                              "ARCHS4_TFs_Coexp"                                 
 [10] "BioCarta_2016"                                     "BioPlex_2017"                                      "c1.all.v6.2.symbols.gmt"                          
 [13] "c2.all.v6.2.symbols.gmt"                           "c3.all.v6.2.symbols.gmt"                           "c4.all.v6.2.symbols.gmt"                          
 [16] "c5.all.v6.2.symbols.gmt"                           "c6.all.v6.2.symbols.gmt"                           "c7.all.v6.2.symbols.gmt"                          
 [19] "Cancer_Cell_Line_Encyclopedia"                     "ChEA_2016"                                         "Chromosome_Location"                              
 [22] "Chromosome_Location_hg19"                          "dbGaP"                                             "DepMap_WG_CRISPR_Screens_Broad_CellLines_2019"    
 [25] "DepMap_WG_CRISPR_Screens_Sanger_CellLines_2019"    "Disease_Perturbations_from_GEO_down"               "Disease_Perturbations_from_GEO_up"                
 [28] "Disease_Signatures_from_GEO_down_2014"             "Disease_Signatures_from_GEO_up_2014"               "Drug_Perturbations_from_GEO_2014"                 
 [31] "Drug_Perturbations_from_GEO_down"                  "Drug_Perturbations_from_GEO_up"                    "DSigDB"                                           
 [34] "ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X"         "ENCODE_Histone_Modifications_2015"                 "ENCODE_TF_ChIP-seq_2015"                          
 [37] "Enrichr_Libraries_Most_Popular_Genes"              "Enrichr_Submissions_TF-Gene_Coocurrence"           "Epigenomics_Roadmap_HM_ChIP-seq"                  
 [40] "GeneSigDB"                                         "Genome_Browser_PWMs"                               "GO_Biological_Process_2018"                       
 [43] "GO_Cellular_Component_2018"                        "GO_Molecular_Function_2018"                        "GWAS_Catalog_2019"                                
 [46] "HMDB_Metabolites"                                  "Human_Gene_Atlas"                                  "Human_Phenotype_Ontology"                         
 [49] "HumanCyc_2016"                                     "huMAP"                                             "InterPro_Domains_2019"                            
 [52] "KEA_2015"                                          "KEGG_2019_Human"                                   "Kinase_Perturbations_from_GEO_down"               
 [55] "Kinase_Perturbations_from_GEO_up"                  "Ligand_Perturbations_from_GEO_down"                "Ligand_Perturbations_from_GEO_up"                 
 [58] "LINCS_L1000_Chem_Pert_down"                        "LINCS_L1000_Chem_Pert_up"                          "LINCS_L1000_Kinase_Perturbations_down"            
 [61] "LINCS_L1000_Kinase_Perturbations_up"               "LINCS_L1000_Ligand_Perturbations_down"             "LINCS_L1000_Ligand_Perturbations_up"              
 [64] "MCF7_Perturbations_from_GEO_down"                  "MCF7_Perturbations_from_GEO_up"                    "MGI_Mammalian_Phenotype_2017"                     
 [67] "MGI_Mammalian_Phenotype_Level_4"                   "miRTarBase_2017"                                   "MSigDB_Computational"                             
 [70] "MSigDB_Oncogenic_Signatures"                       "NCI-60_Cancer_Cell_Lines"                          "NCI-Nature_2016"                                  
 [73] "NIH_Funded_PIs_2017_AutoRIF_ARCHS4_Predictions"    "NIH_Funded_PIs_2017_GeneRIF_ARCHS4_Predictions"    "NIH_Funded_PIs_2017_Human_AutoRIF"                
 [76] "NIH_Funded_PIs_2017_Human_GeneRIF"                 "NIH_Funded_PIs_2017_Human_GeneRIF(1)"              "NURSA_Human_Endogenous_Complexome"                
 [79] "Old_CMAP_down"                                     "Old_CMAP_up"                                       "OMIM_Disease"                                     
 [82] "OMIM_Expanded"                                     "Panther_2016"                                      "Pfam_Domains_2019"                                
 [85] "Pfam_InterPro_Domains"                             "Phosphatase_Substrates_from_DEPOD"                 "PPI_Hub_Proteins"                                 
 [88] "Rare_Diseases_AutoRIF_ARCHS4_Predictions"          "Rare_Diseases_AutoRIF_Gene_Lists"                  "Rare_Diseases_GeneRIF_ARCHS4_Predictions"         
 [91] "Rare_Diseases_GeneRIF_Gene_Lists"                  "Reactome_2016"                                     "RNA-Seq_Disease_Gene_and_Drug_Signatures_from_GEO"
 [94] "SILAC_Phosphoproteomics"                           "Single_Gene_Perturbations_from_GEO_down"           "Single_Gene_Perturbations_from_GEO_up"            
 [97] "SubCell_BarCode"                                   "SysMyo_Muscle_Gene_Sets"                           "TargetScan_microRNA"                              
[100] "TargetScan_microRNA_2017"                          "TF-LOF_Expression_from_GEO"                        "TF_Perturbations_Followed_by_Expression"          
[103] "Tissue_Protein_Expression_from_Human_Proteome_Map" "Tissue_Protein_Expression_from_ProteomicsDB"       "Transcription_Factor_PPIs"                        
[106] "TRANSFAC_and_JASPAR_PWMs"                          "TRRUST_Transcription_Factors_2019"                 "Virus_Perturbations_from_GEO_down"                
[109] "Virus_Perturbations_from_GEO_up"                   "WikiPathways_2019_Human"     
  
</details>


Returns (invisible) the list of annotations of selected databases

If more than one database is loaded, file name is concatenated to pathway names and separated with "~".

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
To get all databases from MSIG :
```R
loadDB("allMSIG")
```

Any combination of above keywords and databases names is possible.

## install

install directly from the github
```R
devtools::install_github("poulainn/exCITingpath")
```


