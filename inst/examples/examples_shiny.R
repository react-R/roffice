# currently Shiny communication is in progress so this code will not work as of now

#devtools::install_github("react-R/reactR@enhancements")
#devtools::install_github("react-R/roffice")

library(reactR)
library(roffice)
library(shiny)

#options(shiny.trace = TRUE)
ui <- officeuiwidgetOutput("me")

server <- function(input, output, session) {
  # slider with just one prop and some Shiny
  output$me <- renderOfficeuiwidget({
    officeuiwidget(
      reactR::React$Slider(label = "Basic Slider", shinyEvent = "onChange")
    )
  })
}

shinyApp(ui, server)


uiColor <- htmltools::tagList(
  officeuiwidgetOutput("mycolor"),
  plotOutput("rplot", height=400, width=400)
)
serverColor <- function(input, output, session) {
  output$mycolor <- renderOfficeuiwidget({
    # https://developer.microsoft.com/en-us/fabric#/components/colorpicker
    officeuiwidget(
      # using id prop
      reactR::React$ColorPicker(id = "colorpicker", color = "#ffffff", shinyEvent = "onColorChanged")
    )
  })

  output$rplot <- renderPlot({
    color <- input$mycolor_colorpicker_onColorChanged
    plot(1:10, col=color, pch=16)
  })
}
shinyApp(uiColor, serverColor)
