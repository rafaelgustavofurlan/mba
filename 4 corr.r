library(corrplot)

colnames(capitulo_corr)[1] <- 'idade'
colnames(capitulo_corr)[2] <- 'precipitacao'
colnames(capitulo_corr)[3] <- 'temp maxima'
colnames(capitulo_corr)[4] <- 'temp minima'
colnames(capitulo_corr)[5] <- 'insolacao'
colnames(capitulo_corr)[6] <- 'evaporacao piche'
colnames(capitulo_corr)[7] <- 'umid rel media'
colnames(capitulo_corr)[8] <- 'sexo feminino'
colnames(capitulo_corr)[9] <- 'sexo masculino'

matrix <- cor(capitulo_corr, method = 'spearman')
corrplot(matrix, method = 'square', type = 'upper', tl.cex = 0.7, title = '\n\nCapitulos')

colnames(categoria_corr)[1] <- 'idade'
colnames(categoria_corr)[2] <- 'precipitacao'2
colnames(categoria_corr)[3] <- 'temp maxima'
colnames(categoria_corr)[4] <- 'temp minima'
colnames(categoria_corr)[5] <- 'insolacao'
colnames(categoria_corr)[6] <- 'evaporacao piche'
colnames(categoria_corr)[7] <- 'umid rel media'
colnames(categoria_corr)[8] <- 'sexo feminino'
colnames(categoria_corr)[9] <- 'sexo masculino'

matrix <- cor(categoria_corr, method = 'spearman')
corrplot(matrix, method = 'square', type = 'upper', tl.cex = 0.7, title = '\n\nCategorias')

colnames(subcategoria_corr)[1] <- 'idade'
colnames(subcategoria_corr)[2] <- 'precipitacao'
colnames(subcategoria_corr)[3] <- 'temp maxima'
colnames(subcategoria_corr)[4] <- 'temp minima'
colnames(subcategoria_corr)[5] <- 'insolacao'
colnames(subcategoria_corr)[6] <- 'evaporacao piche'
colnames(subcategoria_corr)[7] <- 'umid rel media'
colnames(subcategoria_corr)[8] <- 'sexo feminino'
colnames(subcategoria_corr)[9] <- 'sexo masculino'

matrix <- cor(subcategoria_corr, method = 'spearman')
corrplot(matrix, method = 'square', type = 'upper', tl.cex = 0.7, title = '\n\nSubcategorias')

