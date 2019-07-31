install.packages('fastDummies')
install.packages('dplyr')

library(data.table)
library(dplyr)
library(fastDummies)


consulta_cor <- consultas
consulta_cor <- consulta_cor[, c(3,4,10:15,16,19,22)]

# dividindo nas tabelas de capitulos, categorias e subcategorias
capitulo <- consulta_cor[, c(1:9)]
categoria <- consulta_cor[ ,c(1:8, 10)]
subcategoria <- consulta_cor[, c(1:8, 11)]

# filtrando as top 20
# capitulo nao precisa de top 20 porque já tem aproximadamente 20 capitulos
categoria <- setDT(categoria)[categoria$`CAT` %in% cat_top20$`CAT`] # filtra as top 20 na tabela catoegoria
subcategoria <- setDT(subcategoria)[subcategoria$`CID` %in% cid_top20$`CID`] # filtra as top 20 na tabela subcatoegoria

# criando dummies

capitulo$CAPITULO <- as.factor(capitulo$CAPITULO)
capitulo_corr <- fastDummies::dummy_cols(capitulo)
capitulo_corr <- capitulo_corr[, c(1, 3:8, 10:33)]

categoria_corr <- fastDummies::dummy_cols(categoria)
categoria_corr <- categoria_corr[, c(1, 3:8, 10:31)]
colnames(categoria_corr)[10:29] <- substring(names(categoria_corr)[10:29], 5) # remove CAT_


subcategoria_corr <- fastDummies::dummy_cols(subcategoria)
subcategoria_corr <- subcategoria_corr[, c(1, 3:8, 10:31)]
colnames(subcategoria_corr)[10:29] <- substring(names(subcategoria_corr)[10:29], 5) # remove CID_

write.csv(capitulo_corr, 'capitulos_corr.csv')
write.csv(categoria_corr, 'categorias_corr.csv')
write.csv(subcategoria_corr, 'subcategorias_corr.csv')
