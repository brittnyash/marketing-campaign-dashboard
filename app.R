
library(shiny)
library(sqldf)
library(ggplot2)
library(dplyr)

# Load dataset
df <- read.csv("marketing_campaign_dataset revised.csv", stringsAsFactors = FALSE)
df$Date <- as.Date(df$Date)

# Define UI
ui <- fluidPage(
  titlePanel("Marketing Campaign Dashboard"),

  sidebarLayout(
    sidebarPanel(
      selectInput("segment", "Customer Segment:", 
                  choices = c("All", unique(df$Customer_Segment))),
      selectInput("channel", "Channel Used:", 
                  choices = c("All", unique(df$Channel_Used)))
    ),

    mainPanel(
      tabsetPanel(
        tabPanel("ROI by Segment", plotOutput("roiPlot")),
        tabPanel("Channel Performance", plotOutput("channelPlot")),
        tabPanel("Engagement by Campaign Type", plotOutput("engagePlot"))
      )
    )
  )
)

# Define Server
server <- function(input, output) {

  filtered_data <- reactive({
    data <- df
    if (input$segment != "All") {
      data <- data[data$Customer_Segment == input$segment, ]
    }
    if (input$channel != "All") {
      data <- data[data$Channel_Used == input$channel, ]
    }
    return(data)
  })

  output$roiPlot <- renderPlot({
    data <- filtered_data()
    agg <- sqldf("SELECT Customer_Segment, AVG(ROI) AS Avg_ROI
                  FROM data GROUP BY Customer_Segment")
    ggplot(agg, aes(x = Customer_Segment, y = Avg_ROI, fill = Customer_Segment)) +
      geom_col() + coord_flip() +
      labs(title = "Average ROI by Customer Segment", y = "Avg ROI", x = "")
  })

  output$channelPlot <- renderPlot({
    data <- filtered_data()
    agg <- sqldf("SELECT Channel_Used, AVG(Conversion_Rate) AS Avg_Conversion, AVG(ROI) AS Avg_ROI
                  FROM data GROUP BY Channel_Used")
    ggplot(agg, aes(x = Channel_Used, y = Avg_Conversion, fill = Channel_Used)) +
      geom_col() + coord_flip() +
      labs(title = "Avg Conversion Rate by Channel", y = "Avg Conversion Rate", x = "")
  })

  output$engagePlot <- renderPlot({
    data <- filtered_data()
    agg <- sqldf("SELECT Campaign_Type, AVG(Engagement_Score) AS Avg_Engagement
                  FROM data GROUP BY Campaign_Type")
    ggplot(agg, aes(x = Campaign_Type, y = Avg_Engagement, fill = Campaign_Type)) +
      geom_col() + coord_flip() +
      labs(title = "Engagement by Campaign Type", y = "Avg Engagement", x = "")
  })
}

# Run the app
shinyApp(ui = ui, server = server)
