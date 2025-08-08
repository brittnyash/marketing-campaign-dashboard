
# Marketing Campaign Dashboard (R + SQL + Shiny)

This project uses a marketing campaign dataset to explore performance metrics using **R**, **SQL-like queries (via `sqldf`)**, and interactive **Shiny dashboards**.

## Files Included

- `Marketing_Campaign_SQL_Analysis.Rmd`: An RMarkdown file for SQL-based exploratory analysis.
- `app.R`: A Shiny dashboard app with filters for segment and channel.

## Key Analyses

- ROI by Customer Segment
- Conversion & ROI by Channel
- Engagement by Campaign Type
- Dynamic filtering via sidebar controls in Shiny

## Libraries Used

- `sqldf`
- `ggplot2`
- `dplyr`
- `shiny`

## How to Run

### RMarkdown Report

1. Open `Marketing_Campaign_SQL_Analysis.Rmd` in RStudio.
2. Click "Knit" to generate an HTML report.

### Shiny Dashboard

1. Open `app.R` in RStudio.
2. Click "Run App" (or use `shiny::runApp()`).

## Insights Generated

- Channels like email and paid search show stronger ROI.
- Certain segments consistently yield higher engagement.
- Interactive filtering lets users drill into campaign trends.

## Author

Built by Brittany McGregor — https://www.linkedin.com/in/brittany-mcgregor-39a90a124/
