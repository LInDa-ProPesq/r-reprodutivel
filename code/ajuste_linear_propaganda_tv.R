packrat::status()
#packrat::restore()
packrat::snapshot()
#install.packages("ggplot2"); 

# Análise exploratória de dados
# O primeiro passo de uma análise geralmente envolve explorar os dados. 
# Sera feita a exploração para o arquivo Advertising2.csv (orçamentos de TV).
# Ler os dados
adsData <- read.csv("data/Advertising2.csv")
# Plotar vendas por mil de publicidade televisiva
library(ggplot2)
png(filename = "graphics/publi_tv.png", width = 480, height = 480)
ggplot(adsData, aes(x=TV, y=Sales)) + geom_point(col="darkorange") +
  ylab("Vendas (por mil unidades)") + xlab("Orçamento de TV (por mil dólares)")
dev.off()

# Parece haver uma  clara relação positiva entre o valor do orçamento e suas vendas. 
# No entanto, um orçamento negativo conseguiu entrar nos dados, o que é mais provável 
# que seja um erro de coleta de dados.

# Processamento (Limpeza - remover outlier)
# Outlier - valor aberrante ou valor atípico, é uma observação que apresenta um grande 
# afastamento das demais da série
outlierIndex <- which(adsData$TV < 0)
adsData <- adsData[-outlierIndex,]

# Agora que os dados foram processados (limpos), a análise de dados pode ser executada.

# Código analítico
# Para obter uma descrição mais concreta da relação entre orçamentos e vendas, 
# o modelo linear é adequado.

# Ajustar (fit) o modelo linear aos dados
lmFit <- lm(Sales~TV, data=adsData)

# Imprimir os coefficients
lmFitCoef <- coef(lmFit)
lmFitCoef
# Resultados:
#(Intercept)          TV 
# 7.03259355  0.04753664

# De acordo com o ajuste linear, aumentar o orçamento de TV em mil dólares resultará, 
# aproximadamente, em 47 unidades extras vendidas. 
# O ajuste é grafico abaixo.	
# Gráfico do ajuste (fit)
png(filename = "graphics/relacao_orcamento_tv.png", width = 480, height = 480)
ggplot(adsData, aes(x=TV, y=Sales)) + geom_point(col="darkorange") +
  geom_abline(intercept = lmFitCoef[1], slope = lmFitCoef[2], col="blue") +
  ylab("Vendas (por mil unidades)") + xlab("Orçamento de TV (por mil dólares)")
dev.off()

