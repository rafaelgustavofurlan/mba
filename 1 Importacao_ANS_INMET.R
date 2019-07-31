# bibliotecas
library(readr)
library(data.table)
library(dplyr)
library(readxl)
library(readr)
library(xlsx)

# ativando gc
  gc()
  gcinfo(FALSE)
  
  ###################################### ANS
  # import consultas hospitalares
  SP_201501_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201501_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201502_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201502_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201503_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201503_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201504_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201504_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201505_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201505_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201506_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201506_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201507_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201507_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201508_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201508_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201509_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201509_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201510_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201510_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201511_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201511_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201512_HOSP_CONS <- read_csv("Hospital/2015/Cons/SP_201512_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  
  SP_201601_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201601_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201602_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201602_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201603_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201603_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201604_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201604_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201605_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201605_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201606_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201606_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201607_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201607_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201608_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201608_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201609_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201609_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201610_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201610_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201611_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201611_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201612_HOSP_CONS <- read_csv("Hospital/2016/Cons/SP_201612_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  
  SP_201701_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201701_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201702_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201702_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201703_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201703_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201704_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201704_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201705_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201705_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201706_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201706_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201707_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201707_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201708_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201708_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201709_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201709_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201710_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201710_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201711_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201711_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  SP_201712_HOSP_CONS <- read_csv("Hospital/2017/Cons/SP_201712_HOSP_CONS.csv", locale = readr::locale(encoding = "latin1"))
  
  # criando dataframe consolidado
  SP_Hosp <- rbind(SP_201501_HOSP_CONS, 
                   SP_201502_HOSP_CONS, 
                   SP_201503_HOSP_CONS, 
                   SP_201504_HOSP_CONS,
                   SP_201505_HOSP_CONS,
                   SP_201506_HOSP_CONS,
                   SP_201507_HOSP_CONS,
                   SP_201508_HOSP_CONS, 
                   SP_201509_HOSP_CONS,
                   SP_201510_HOSP_CONS, 
                   SP_201511_HOSP_CONS, 
                   SP_201512_HOSP_CONS, 
                   SP_201601_HOSP_CONS, 
                   SP_201602_HOSP_CONS, 
                   SP_201603_HOSP_CONS, 
                   SP_201604_HOSP_CONS, 
                   SP_201605_HOSP_CONS, 
                   SP_201606_HOSP_CONS, 
                   SP_201607_HOSP_CONS, 
                   SP_201608_HOSP_CONS, 
                   SP_201609_HOSP_CONS, 
                   SP_201610_HOSP_CONS, 
                   SP_201611_HOSP_CONS,
                   SP_201612_HOSP_CONS,
                   SP_201701_HOSP_CONS, 
                   SP_201702_HOSP_CONS, 
                   SP_201703_HOSP_CONS, 
                   SP_201704_HOSP_CONS, 
                   SP_201705_HOSP_CONS, 
                   SP_201706_HOSP_CONS, 
                   SP_201707_HOSP_CONS, 
                   SP_201708_HOSP_CONS, 
                   SP_201709_HOSP_CONS, 
                   SP_201710_HOSP_CONS, 
                   SP_201711_HOSP_CONS, 
                   SP_201712_HOSP_CONS)
  
  # deletando dataframes originais
  rm(SP_201501_HOSP_CONS, 
     SP_201502_HOSP_CONS, 
     SP_201503_HOSP_CONS, 
     SP_201504_HOSP_CONS,
     SP_201505_HOSP_CONS,
     SP_201506_HOSP_CONS,
     SP_201507_HOSP_CONS,
     SP_201508_HOSP_CONS, 
     SP_201509_HOSP_CONS,
     SP_201510_HOSP_CONS, 
     SP_201511_HOSP_CONS, 
     SP_201512_HOSP_CONS, 
     SP_201601_HOSP_CONS, 
     SP_201602_HOSP_CONS, 
     SP_201603_HOSP_CONS, 
     SP_201604_HOSP_CONS, 
     SP_201605_HOSP_CONS, 
     SP_201606_HOSP_CONS, 
     SP_201607_HOSP_CONS, 
     SP_201608_HOSP_CONS, 
     SP_201609_HOSP_CONS, 
     SP_201610_HOSP_CONS, 
     SP_201611_HOSP_CONS,
     SP_201612_HOSP_CONS,
     SP_201701_HOSP_CONS, 
     SP_201702_HOSP_CONS, 
     SP_201703_HOSP_CONS, 
     SP_201704_HOSP_CONS, 
     SP_201705_HOSP_CONS, 
     SP_201706_HOSP_CONS, 
     SP_201707_HOSP_CONS, 
     SP_201708_HOSP_CONS, 
     SP_201709_HOSP_CONS, 
     SP_201710_HOSP_CONS, 
     SP_201711_HOSP_CONS, 
     SP_201712_HOSP_CONS)
  
  #head(SP_Hosp)
  #str(SP_Hosp)
 
# filtrando atendimentos SP
#SP_Hosp[SP_Hosp$CD_MUNIC_BENEFICIARIO == '355030', ]
SP_Hosp <- SP_Hosp[SP_Hosp$CD_MUNIC_PRESTADOR == '355030', ]
SP_Hosp <- SP_Hosp[SP_Hosp$CD_MUNIC_BENEFICIARIO == '355030', ]
#dim(SP_Hosp)

# removendo colunas desnecessarias
SP_Hosp <- SP_Hosp[, c(1, 3, 4, 11:20)]
teste <- SP_Hosp[, c(1, 3, 4, 11:20)]

# import da base de terminologia de motivo de encerramento
saida <- read_xlsx('tabela_motivo_saida.xlsx')
saida <- saida[, c(1,3)]

# join com tabela de consultas
SP_Hosp <- merge(SP_Hosp, saida, by = 'MOTIVO_ENCERRAMENTO')

#dim(SP_Hosp)

SP_Hosp <- SP_Hosp[, c(2:14)]

# salvando dataframe
write.csv(SP_Hosp, 'consolidadoHosp.csv')

rm(saida)

# criando dataframe com informacao das consultass
consultas <- SP_Hosp[, c(1:8, 13)]
consultas %>% filter(!is.na(consultas$`#ID_EVENTO`))
consultas <- consultas %>% filter(!is.na(consultas$`#ID_EVENTO`))
consultas <- unique(consultas)

# criando dataframes de CID
cid1 <- SP_Hosp[, c(1, 9)] # cid 1
cid1 <- cid1 %>% filter(!is.na(cid1$CID_1))
colnames(cid1)[2] <- 'CID'

cid2 <- SP_Hosp[, c(1, 10)] # cid 2
cid2 <- cid2 %>% filter(!is.na(cid2$CID_2))
colnames(cid2)[2] <- 'CID'

cid3 <- SP_Hosp[, c(1, 11)] # cid 3
cid3 <- cid3 %>% filter(!is.na(cid3$CID_3))
colnames(cid3)[2] <- 'CID'

cid4 <- SP_Hosp[, c(1, 12)] # cid 4
cid4 <- cid4 %>% filter(!is.na(cid4$CID_4))
colnames(cid4)[2] <- 'CID'

# criando tabela consolidada cid
cid <- rbind(cid1, cid2, cid3, cid4)
cid <- unique(cid)

# removendo demais arquivos
rm(cid1, cid2, cid3, cid4)

# salvando dataframes Consulta e Cid
write.csv(cid, 'cid.csv')

# join dos atendimentos x cid
#merge(consultas, cid, by = '#ID_EVENTO')
consultas <- merge(consultas, cid, by = '#ID_EVENTO')

rm(cid, SP_Hosp)

# join com definicoes do CID
cid_def <-read_csv("CID-10-SUBCATEGORIAS.csv", locale = readr::locale(encoding = "latin1"))

#dim(cid_def)
colnames(cid_def)[1] <- 'CID'

consultas <- merge(consultas, cid_def, by = 'CID')
rm(cid_def)

consultas <- consultas[, c(1:10, 14:15)]

###################################### INMET
# import das bases
estacoes <- read_csv('estacoes.csv', locale = readr::locale(encoding = 'latin1'))
#str(estacoes) 

saopaulo <- read_excel("Bases.xlsx", sheet = "Sao Paulo")
#str(saopaulo)

# tratamento
### Estacoes
##### removendo coluna numerica
estacoes <- estacoes[, -1]
#str(estacoes)
#View(estacoes)

##### renomeando ID para Estacao
colnames(estacoes)[1] <- paste('Estacao')
#str(estacoes)

##### armazendando ID da estação em uma variavel
EstacaoID <- unique(saopaulo$Estacao)

##### removendo coluna estação
saopaulo <- saopaulo[, -1]
#str(saopaulo)

### export_sp
##### retirando valores de horas
saopaulo <- saopaulo[, -2]
#str(saopaulo)

##### convertendo para numeros
saopaulo$Precipitacao <- as.numeric(saopaulo$Precipitacao)
saopaulo$TempMaxima <- as.numeric(saopaulo$TempMaxima)
saopaulo$TempMinima <- as.numeric(saopaulo$TempMinima)
saopaulo$Insolacao <- as.numeric(saopaulo$Insolacao)
saopaulo$`Evaporacao Piche` <- as.numeric(saopaulo$`Evaporacao Piche`)
saopaulo$`Temp Comp Media` <- as.numeric(saopaulo$`Temp Comp Media`)
saopaulo$`Umidade Relativa Media` <- as.numeric(saopaulo$`Umidade Relativa Media`)
saopaulo$`Velocidade do Vento Media` <- as.numeric(saopaulo$`Velocidade do Vento Media`)

#str(saopaulo)

##### summarizing dos valoes por data
attach(saopaulo)

saopaulo %>%
  group_by(Data) %>%
  summarize(Precip = sum(Precipitacao, na.rm = T),
            TMax = sum(TempMaxima, na.rm = T),
            TMin = sum(TempMinima, na.rm = T),
            Ins = sum(Insolacao, na.rm = T),
            EvapPiche = sum(`Evaporacao Piche`, na.rm = T),
            TempCompMedia = sum(`Temp Comp Media`, na.rm = T),
            UmidRelMed = sum(`Umidade Relativa Media`, na.rm = T),
            VelVentMed = sum(`Velocidade do Vento Media`, na.rm = T)
  )

saopaulo <- saopaulo %>%
  group_by(Data) %>%
  summarize(Precip = sum(Precipitacao, na.rm = T),
            TMax = sum(TempMaxima, na.rm = T),
            TMin = sum(TempMinima, na.rm = T),
            Ins = sum(Insolacao, na.rm = T),
            EvapPiche = sum(`Evaporacao Piche`, na.rm = T),
            TempCompMedia = sum(`Temp Comp Media`, na.rm = T),
            UmidRelMed = sum(`Umidade Relativa Media`, na.rm = T),
            VelVentMed = sum(`Velocidade do Vento Media`, na.rm = T)
  )

detach(saopaulo, force = T)

##### adicionando coluna de Estacao
saopaulo$Estacao <- unique(EstacaoID)

# ajustando valores 0 de temperatura
saopaulo$TMax[saopaulo$TMax == 0] <- mean(saopaulo$TMax)
saopaulo$TMin[saopaulo$TMin == 0] <- mean(saopaulo$TMin)

#str(saopaulo)

##### join das tabelas
#merge(x = saopaulo, y = estacoes, by = 'Estacao')

saopaulo <- merge(x = saopaulo, y = estacoes, by = 'Estacao')
#str(saopaulo)

write.csv(saopaulo, file = 'base_saopaulo.csv')

rm(estacoes, EstacaoID)

# convertendo datas para o mesmo padrão
saopaulo$Data <- as.Date(saopaulo$Data, "%y-%m-%d")

consultas$DT_INTERNACAO <- strptime(consultas$DT_INTERNACAO, "%d/%m/%Y")
consultas$DT_INTERNACAO <- as.Date(consultas$DT_INTERNACAO, "%y-%m-%d")

consultas$DT_SAIDA_INTERNACAO <- strptime(consultas$DT_SAIDA_INTERNACAO, "%d/%m/%Y")
consultas$DT_SAIDA_INTERNACAO <- as.Date(consultas$DT_SAIDA_INTERNACAO, "%y-%m-%d")

consultas$Data <- consultas$DT_INTERNACAO

# join tabelas consulta e clima
#merge(consultas, saopaulo, by = 'Data')
consultas <- merge(consultas, saopaulo, by = 'Data')
consultas <- consultas[,c(1:13, 15:22)]
consultas <- consultas[, c(1:20)]

rm(saopaulo)

consultas <- consultas[, c(1:18, 20)]
write.csv(consultas, 'consultas.csv')

# finaliza gc
gcinfo(verbose = FALSE) 
gc(TRUE)
gc(reset = TRUE)