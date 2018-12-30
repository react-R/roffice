#devtools::install_github("timelyportfolio/reactR@enhancements")
#devtools::install_github("timelyportfolio/roffice")

library(reactR)
library(roffice)

# just one prop
officeuiwidget(
  reactR::React$Slider(label = "Basic Slider")
  # alternately
  # component("Slider", varArgs = list(label = "Basic Slider"))
)

# more props and a combination
officeuiwidget(
  reactR::React$Slider(label = "Basic Slider"),
  reactR::React$Slider(
    label = "slider with props",
    min = 1,
    max = 5,
    step = 1,
    defaultValue = 2,
    showValue = TRUE
  )
)
