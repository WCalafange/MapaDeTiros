library(ggplot2)
library(ggsoccer)
library(readr)

coord <- read_delim("C://Users//ACER//Desktop//Coordenadas_finalizações_realizadas//finalizações_realizadas_gol.csv", 
                    delim = ";", escape_double = FALSE, locale = locale(encoding = "ASCII", 
                    asciify = TRUE), trim_ws = TRUE)

ggplot(coord) +
  
  #Definições de campo
  annotate_pitch(colour = "white", fill = "#006400", goals = goals_line) +
  coord_flip(xlim = c(0,50)) +

  theme_pitch() +
  scale_y_reverse() +
  
  #Marcações dos pontos
  geom_point(aes(y = X, x = Y, shape=Event,),
             colour = "green",
             size = 4) +
  scale_shape_manual(values=c(19)) +
  #                   labels=c("Gol","Bloqueado","No gol","Fora")) +
  #scale_shape_manual(values=c(17,4,19,15)) +
  #                   labels=c("Fora", "Bloqueado","Gol","No gol")) +
  
  #Definição de texto
  labs (colour = "TIMES",
        shape = "DIREÇÃO DE CHUTE",
        title = "MAPA DE CHUTES REALIZADOS",
        subtitle = "GOLS SERRA BRANCA") +
  
  #Definição de Layout
  theme(panel.background = element_rect(fill = "darkslategray"),
        plot.background = element_rect(fill = "darkslategray"),
        legend.background = element_rect(fill = "darkslategray"),
        plot.title = element_text(hjust = 0.95),
        plot.subtitle = element_text(hjust = 0.8),
        legend.text = element_text(colour = "white"),
        title = element_text(colour = "white"))




