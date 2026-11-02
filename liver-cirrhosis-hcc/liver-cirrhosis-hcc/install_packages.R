# Установка всех пакетов проекта. Запускать один раз: source("install_packages.R")
# Список составлен по реальному коду ноутбуков GEO_LINC, TCGA_LIHC, TCGA_LIHC2.

if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")

cran_pkgs <- c("ggplot2", "ggrepel", "pheatmap", "patchwork", "dplyr", "ggupset")

bioc_pkgs <- c(
  "GEOquery",              # загрузка данных GEO
  "limma",                 # нормализация и DEG для микрочипа
  "TCGAbiolinks",          # загрузка данных TCGA
  "SummarizedExperiment",  # контейнер данных RNA-seq
  "DESeq2",                # DEG для RNA-seq
  "org.Hs.eg.db",          # аннотация генов
  "EnhancedVolcano",       # volcano plot
  "clusterProfiler",       # GO / KEGG
  "enrichplot",            # графики обогащения
  "maftools",              # данные мутаций TCGA
  "sesame", "sesameData"   # данные метилирования TCGA
)

install.packages(setdiff(cran_pkgs, rownames(installed.packages())))
BiocManager::install(setdiff(bioc_pkgs, rownames(installed.packages())), ask = FALSE)

# Фиксация версий (рекомендуется после первой успешной установки):
# install.packages("renv"); renv::init(); renv::snapshot()
