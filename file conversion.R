library(Seurat)
library(SeuratDisk)
obj<- readRDS("C:/Users/Jan/data/INTepi.rds")
for(col in colnames(obj@meta.data)) {
  obj@meta.data[[col]] <- as.character(obj@meta.data[[col]])
}
obj_clean <- DietSeurat(obj, assays = "RNA")
obj_clean[["RNA"]]@scale.data <- as.matrix(obj_clean[["RNA"]]@data)
# print(min(obj_clean[["RNA"]]@scale.data))
DefaultAssay(obj) <- "RNA"
SaveH5Seurat(obj_clean, filename = "C:/Users/Jan/data/INTepi_CLEAN.h5Seurat", overwrite = TRUE)
Convert("C:/Users/Jan/data/INTepi_CLEAN.h5Seurat", dest = "h5ad", overwrite= TRUE)