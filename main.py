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