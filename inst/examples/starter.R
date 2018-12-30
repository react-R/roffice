#devtools::install_github("timelyportfolio/reactR@enhancements")
#devtools::install_github("timelyportfolio/roffice")

library(reactR)
library(roffice)

# slider with just one prop
officeuiwidget(
  reactR::React$Slider(label = "Basic Slider")
  # alternately
  # component("Slider", varArgs = list(label = "Basic Slider"))
)

# slider with more props and a combination
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

# https://developer.microsoft.com/en-us/fabric#/components/toggle
# <Toggle
#   defaultChecked={true}
#   label="Enabled and checked"
#   onText="On"
#   offText="Off"
# />
officeuiwidget(
  reactR::React$Toggle(
    defaultChecked = TRUE,
    label = "Enabled and checked",
    onText = "On",
    offText = "Off"
  )
)

# https://developer.microsoft.com/en-us/fabric#/components/colorpicker
officeuiwidget(
  reactR::React$ColorPicker(color = "#ffffff")
)
