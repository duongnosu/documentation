import numpy as np

t = np.linspace(-1,1.2,2000)
x = (t**3)+(0.3*np.random.randn(2000))
y = (t**6)+(0.3*np.random.randn(2000))
library(plotly)
p <- plotly(username='TestBot', key='r1neazxo9w')
trace1 <- list(
  x = x, 
  y = y, 
  mode = "markers", 
  name = "points", 
  marker = list(
    color = "rgb(102,0,0)", 
    size = 2, 
    opacity = 0.4
  ), 
  type = "scatter"
)
trace2 <- list(
  x = x, 
  y = y, 
  name = "density", 
  ncontours = 20, 
  colorscale = "Hot", 
  reversescale = TRUE, 
  showscale = FALSE, 
  type = "histogram2dcontour"
)
trace3 <- list(
  x = x, 
  name = "x density", 
  marker = list(color = "rgb(102,0,0)"), 
  yaxis = "y2", 
  type = "histogram"
)
trace4 <- list(
  y = y, 
  name = "y density", 
  marker = list(color = "rgb(102,0,0)"), 
  xaxis = "x2", 
  type = "histogram"
)
data <- list(trace1, trace2, trace3, trace4)
layout <- list(
  showlegend = FALSE, 
  autosize = FALSE, 
  width = 600, 
  height = 550, 
  xaxis = list(
    domain = c(0, 0.85), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  yaxis = list(
    domain = c(0, 0.85), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  margin = list(t = 50), 
  hovermode = "closest", 
  bargap = 0, 
  xaxis2 = list(
    domain = c(0.85, 1), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  yaxis2 = list(
    domain = c(0.85, 1), 
    showgrid = FALSE, 
    zeroline = FALSE
  )
)
response <- p$plotly(data, kwargs=list(layout=layout, auto_open=FALSE, fileopt="overwrite", filename="2dhistogram-contour-subplots"))
url <- response$url