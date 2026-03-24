import pandas as pd
df = pd.read_csv("netflix_titles.csv")
print(df.head())
print(df.info())

df = df.drop_duplicates()

df["director"] = df["director"].fillna("Unknown")
df["cast"] = df["cast"].fillna("Not Available")
df["country"] = df["country"].fillna("Unknown")

df["rating"] = df["rating"].fillna(df["rating"].mode()[0]) #used most frequent value

df["date_added"] = pd.to_datetime(df["date_added"], errors="coerce") #convert date added to date time(TEXT-> PROPER DATE FORMAT)

print("Cleaning done")

print(df["type"].value_counts())

df["content_type"] = df["type"]

df["year_added"] = df["date_added"].dt.year 

top_countries = df["country"].value_counts().head(5)
print(top_countries)

content_per_year = df["year_added"].value_counts().sort_index()
print(content_per_year)

avg_release = df.groupby("type")["release_year"].mean()
print(avg_release)

df.to_csv("netflix_cleaned.csv", index=False)