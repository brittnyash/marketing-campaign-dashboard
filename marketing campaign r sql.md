
# Marketing Campaign Dashboard (R + SQL + Shiny)

This project uses a marketing campaign dataset to explore performance metrics using **R**, **SQL-like queries (via `sqldf`)**, and interactive **Shiny dashboards**. I sourced a marketing campaign dataset from Kaggle that included detailed metrics such as campaign type, marketing channel, customer segment, location, ROI, conversion rate, and engagement. I downloaded it as a CSV and organized it into a structured project folder with separate directories. After importing the dataset into R, I inspected it with str(), summary(), and head() to verify column types, check for missing values, and identify potential anomalies. 

## Extract, Transform, Load
I then cleaned and transformed the data by converting date fields to the correct format. I removed rows with missing critical metrics and assessed outliers using boxplots. With a clean dataset, I used sqldf in R to run SQL-style queries that analyzed ROI by customer segment, engagement by campaign type, top-performing locations by ROI, and channel performance. 

## Shiny App
Finally, I built an interactive Shiny dashboard (app.R) that allows users to filter by customer segment and channel, with dynamic visualizations for ROI by segment, channel performance, and campaign engagement. Throughout the process, I validated the work by tracking row counts before and after cleaning, checking for duplicates, confirming metric ranges, and cross-verifying SQL outputs with dplyr summaries. The project concluded with actionable marketing recommendations based on the analysis, linking data insights directly to strategic opportunities.

## Insights
The dataset revealed that Foodies and Outdoor Adventurers delivered the highest ROI, search campaigns drove the most engagement, Houston and Chicago were the most profitable locations, and Facebook and YouTube were the strongest ROI channels while Instagram led in conversion rate. I visualized these findings using ggplot2 through boxplots, stacked bar charts, and categorical comparisons.



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


- Foodies and Outdoor Adventurers respond best to marketing campaigns, yielding the highest average ROI. In contrast, Tech Enthusiasts underperform, indicating a potential mismatch in messaging or targeting.These segments could be cheaper to reach in digital ad platforms compared to more competitive audiences like Tech Enthusiasts.
- Facebook and Youtube channels yielded the highest ROI, while Instagram drove the strongest conversion rates. Long form content such as youtube allows for richer storytelling and stronger brand recall, potentially leading to higher-value purchases.
- Search campaigns drive the most engagement. Influencer campaigns underperform. Engagement can be inflated by likes and comments that don’t translate into conversions. Also, ROI suffers if influencers’ audiences aren’t perfectly aligned with the target buyer.
- Houston and Chicago are the most profitable cities for campaigns, with significantly higher ROI. Meanwhile, Los Angeles underperforms even with the same amount of campaigns as top performers. This may show proof of misalignment in LA budget, whereas LA may have more competitive ad markets, with higher CPC or CPM.
- ROI Distribution by Channel (Boxplot Insight): YouTube shows high maximum ROI values, while Google Ads has more consistent ROI across campaigns and with tighter distribution.





Built by Brittany McGregor — https://www.linkedin.com/in/brittany-mcgregor-39a90a124/



