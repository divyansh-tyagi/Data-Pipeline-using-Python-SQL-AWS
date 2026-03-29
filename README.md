Built an end-to-end data pipeline using Python, SQL, AWS S3, PostgreSQL and Power BI.

Steps
Cleaned raw dataset using pandas
Uploaded cleaned dataset to AWS S3
Loaded data into PostgreSQL
Performed SQL analysis
Built interactive dashboard in Power BI
Tools Used

Python, Pandas, AWS S3, PostgreSQL, Power BI

🔄 Pipeline Flow

CSV → pandas → AWS S3 → PostgreSQL → SQL Analysis → Power BI Dashboard

☁️ AWS S3 Integration

The cleaned dataset is stored in AWS S3 to simulate a real-world cloud storage layer in the data pipeline.

S3 Object URL:
https://netflix-data-pipeline-divyansh.s3.ap-south-1.amazonaws.com/netflix_cleaned.csv

## 📊 Dashboard Preview

![Dashboard](screenshots/dashboard.png)

## 📈 Over the Year Trend

![Trends over the year](screenshots/line_trend.png)

## 🌍 Top Countries

![Countries](screenshots/countries.png)

## 🎭 Genre Distribution

![Genres](screenshots/genres.png)

## 🍿 Movies vs TV Shows

![Pie Chart](screenshots/pie_chart.png)


## Key Insights
- Majority content are Movies
- USA has highest content
- Drama is most common genre
- Content increased rapidly after 2015
