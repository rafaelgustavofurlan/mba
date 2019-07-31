library(data.table)
library(dplyr)

consultas <- fread('consultas.csv', sep = ',', encoding = 'Latin-1')
consultas <- consultas[, c(2: 19)]

# importando cids
cids <- fread('cid_cons.csv', sep = ',', encoding = 'Latin-1')
colnames(cids)[7] <- 'CID'

# tratando tabela de consultas
consultas <- merge(consultas, cids, by = 'CID')
consultas <- consultas[, c(1:10, 13:27)]
consultas <- consultas[, c(2:22, 1, 23:25)]

colnames(consultas)[25] <- 'CID DESC'

# nao precisa calcular top 20 de capitulos pq já são 20 categorias

# top 20 categorias
cat_freq <- table(consultas$`CAT DESC`)
cat_freq <- data.frame(cat_freq)

cat_freq <- cat_freq[order(-rank(cat_freq$Freq)),]
cat_top20 <- head(cat_freq, 20)

colnames(cat_top20)[1] <- 'CAT DESC'


cat_top20 <- merge(cat_top20, cids, by = 'CAT DESC')
cat_top20 <- cat_top20[, c(1,2,6)]

unique(cat_top20$CAT)
rm(cat_freq)


# top 20 subcategorias
cids_freq <- table(consultas$`CID DESC`)
cids_freq <- data.frame(cids_freq)

colnames(cids_freq)[1] <- 'CID DESC'
colnames(cids)[10] <- 'CID DESC'

cids_freq <- merge(cids_freq, cids, by= 'CID DESC')
cids_freq <- cids_freq[, c(1,2,9)]

cids_freq$len <- nchar(cids_freq$CID)

cids_freq <- cids_freq %>% filter(cids_freq$len == 4)

cids_freq <- cids_freq[order(-rank(cids_freq$Freq)),]
cids_freq <- cids_freq[, c(1:3)]
cid_top20 <- head(cids_freq, 20)

unique(cid_top20$CID)
rm(cids_freq)