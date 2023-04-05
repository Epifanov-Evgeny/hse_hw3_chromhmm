library('tidyverse')
df <- read.csv('HUVEC_10_dense.bed', sep = '\t', header = TRUE, comment= 't')
df <- as_tibble(df)
df$X2 <- as.character(df$X2)
desc <- c("1_12_Repressed", "2_13_Heterochromatin", "3_9_Transcriptional_transition", "4_10_Transcriptional_elongation",
          "5_11_Weak_transcribed", "6_6_Weak_enhancer", "7_7_Weak_enhancer", "8_5_Strong_enhancer", "9_1_Active_Promoter", "10_2_Weak_Promoter")
for (i in c(1:10)){ 
  df[4][df[4] == i] <- desc[i]
}
write.table(df,file="HUVEC_10_dense_new.bed", sep = '\t')
