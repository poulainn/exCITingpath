
enrich=function(a,pathway,om){
    a=intersect(a,om)
    pathway=intersect(pathway,om)
    common=(intersect(a,pathway))
    tab=matrix(c(
    length(common),
    length(setdiff(a,pathway)),
    length(setdiff(pathway,common)),
    length(setdiff(om,union(a,pathway)))
    ),ncol=2)
    data.frame(Common=length(common),GeneSetSize=length(pathway),
      pvalue=fisher.test(tab,alternative="greater")$p.value)
}

enrichAll=function(geneSetToTest,allPathways,OMEGAgenes){
  enriched=do.call(rbind,lapply(allPathways,enrich,om=OMEGAgenes,a=geneSetToTest))
  enriched$fdr=p.adjust(enriched$pvalue,"fdr")
  enriched=enriched[order(enriched$pvalue),]
  enriched
}