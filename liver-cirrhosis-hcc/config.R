# Единый конфиг проекта. Подключать в начале каждого скрипта: source("config.R")

# --- Пороги значимости (одинаковые для GEO и TCGA) ---
PADJ_CUTOFF <- 0.05   # adj.P.Val (limma) / padj (DESeq2)
LFC_CUTOFF  <- 1      # |log2FoldChange|

# --- Датасеты ---
GEO_ID   <- "GSE25097"
GEO_GPL  <- "GPL10687"
TCGA_ID  <- "TCGA-LIHC"

# --- Параметры STRING (внешний сервис, вводятся вручную) ---
STRING_ORGANISM  <- "Homo sapiens"
STRING_MIN_SCORE <- 0.4
STRING_TOP_N     <- 500

# --- Пути (относительно корня репозитория) ---
DIR_RAW       <- "data/raw"
DIR_PROCESSED <- "data/processed"
DIR_RESULTS   <- "results"
DIR_REPORTS   <- "reports"

for (d in c(DIR_RAW, DIR_PROCESSED, DIR_RESULTS, DIR_REPORTS)) {
  if (!dir.exists(d)) dir.create(d, recursive = TRUE)
}

set.seed(42)   # воспроизводимость случайных шагов (PCA, ML)
