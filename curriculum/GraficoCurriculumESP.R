# Cargo la librería
library(ggplot2)
# Genero los valores para las cantidades, las habilidades y el relleno del gráfico, respectivamente
Nivel = c(8,7,5,5,3)
Campo = c("Modelización inferencial",
                "Modelización predictiva", 
                "Visualización de datos",
                "Pruebas estadísticas", 
                "Integración en entorno de nube")

fill = c("#82c64d",
         "#17fe14",
         "#2dfec6",
         "#85fec6",
         "#e0fed3")
perfil = as.data.frame(Nivel, Campo)
etiquetas = c("Básico", 
              "Intermedio", 
              "Experto")
# Y ya generamos el gráfico
grafico <-ggplot(perfil,aes(x = Nivel, y= Campo))+
  scale_y_discrete(limits = Campo)+
  geom_col(width = 0.2, fill = fill, col = "black")+
  theme_light()+
  theme(panel.background = element_rect(fill = "#f4e9c4",
                                        color = "Light green",
                                        size = 0.5,
                                        linetype = "solid"),
        plot.background = element_rect(fill = "#d0fefe"),
        plot.title = element_text(hjust = 3),
        panel.border = element_rect(colour = "black", 
                                 size = 0.4, 
                                 linetype = "solid"),
        axis.text.x = element_text(angle = 45, size = 10, vjust = 0.5),
        axis.ticks.length=unit(.25, "cm"))+
  labs(title ="Habilidades con R", x ="")+
  scale_x_continuous(breaks = c(2,6,10), labels = etiquetas)+
  expand_limits(x=11)
grafico

