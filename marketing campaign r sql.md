
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


- Foodies and Outdoor Adventurers respond best to marketing campaigns, yielding the highest average ROI. In contrast, Tech Enthusiasts underperform, indicating a potential mismatch in messaging or targeting.
- Facebook and Website channels yielded the highest ROI, while Instagram drove the strongest conversion rates. Email and Google Ads performed solidly but were not the top channels.
- Search campaigns drive the most engagement. Influencer campaigns underperform.
- Houston and Chicago are the most profitable cities for campaigns, with significantly higher ROI. Meanwhile, Los Angeles and New York underperform, suggesting they may be oversaturated or misaligned with current strategies.
- Google Ads offers more predictable ROI, while YouTube has higher peaks but possibly more variance. Choose based on risk appetite and budget flexibility.
- ROI Distribution by Channel (Boxplot Insight)
Looking at the spread of ROI for each channel (not just averages), here's what stands out:

YouTube shows high maximum ROI values (e.g., 7.18), indicating strong upside.

Google Ads has more consistent ROI across campaigns, with tighter distribution.

Some channels (like Email or Social) may have high variance — meaning they’re riskier bets: some campaigns win big, others flop.

## Author

Built by Brittany McGregor — https://www.linkedin.com/in/brittany-mcgregor-39a90a124/
