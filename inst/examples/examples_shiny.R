#devtools::install_github("timelyportfolio/reactR@enhancements")
#devtools::install_github("timelyportfolio/roffice")

library(reactR)
library(roffice)
library(shiny)

#options(shiny.trace = TRUE)
ui <- officeuiwidgetOutput("me")

server <- function(input, output, session) {
  # slider with just one prop and some Shiny
  output$me <- renderOfficeuiwidget({
    officeuiwidget(
      reactR::React$Slider(label = "Basic Slider", shiny = "onChange")
    )
  })
}

shinyApp(ui, server)
