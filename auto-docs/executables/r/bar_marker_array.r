library(plotly)
p <- plotly(username='TestBot', key='r1neazxo9w')
data <- list(
  list(
    x = c(1, 2, 3, 4), 
    y = c(5, 4, -3, 2), 
    marker = list(color = c("#447adb", "#447adb", "#db5a44", "#447adb")), 
    type = "bar"
  )
)
response <- p$plotly(data, kwargs=list(auto_open=FALSE, fileopt="overwrite", filename="bar-marker-array"))
url <- response$url