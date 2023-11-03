# Cargar liberia
library(readxl)

#Cargar base de datos

base <- read_excel("Base industria alimentaria ZMVM.xlsx")


# Histograma

hist(base$RMPO311_18,
     main= "Remuneración media del personal ocupado de la industria alimentaria en ZMVM, 2018",
     col = "blue",
     xlab = "Remuneración media del personal ocupado",
     ylab="Frecuencia",
     cex.axis=0.8,
     cex.main = 0.9)

# Diagrama de dispersión

plot(base$RMPO311_18,
     base$IDH_2020,
     main = "Gráfico de dispersión",
     col="blue",
     xlab="Remuneraciones medias",
     ylab="Índice de desarrollo humano",
     cex.axis=0.8,
     cex.main = .9,
     cex.lab = .9,
     pch=5)
+ abline(lm(base$RMPO311_18 ~ base$IDH_2020),
         col="gray")