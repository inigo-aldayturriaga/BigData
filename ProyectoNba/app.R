

library(shiny)
library(dplyr)
library(ggplot2)


ui <- fluidPage(
  
  # Application title
  titlePanel("NBA App"),
    mainPanel(
      plotOutput("graf1"),
      plotOutput("graf2"),
      plotOutput("graf3"),
      plotOutput("graf4"),
      plotOutput("graf5"),
      plotOutput("graf6"),
      plotOutput("graf7"),
      plotOutput("graf8"),
     
    )
  )

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$graf1 <- renderPlot({
    barplot(lal$PTS~lal$Year)
  })
  output$graf2 <- renderPlot({
    hist(equiposMasPuntos$FG)
  })
  output$graf3 <- renderPlot({
    plot(equiposMenosLadrones$STL~equiposMenosLadrones$TOV)
  })
  output$graf4 <- renderPlot({
    plot(equiposMasLadrones$STL~equiposMasLadrones$TOV)
  })
  output$graf5 <- renderPlot({
    plot(x = nbaestadisticas$Year, main = "Gráfica de Anotación por años",
         xlab = "Años",ylab = "Puntos Anotados por temporada",y = nbaestadisticas$PTS, 
         col = c("royalblue", "seagreen", "purple", "grey"))
  })
  output$graf6 <- renderPlot({
    boxplot(nbaestadisticas$X3PA~nbaestadisticas$X3P.)
  })
  
  output$graf7 <- renderPlot({
    pie(s1$X3P,s1$Team)
  })
  output$graf8 <- renderPlot({
    hist(equiposReb$ORB+equiposReb$DRB)
  })
  
  
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
