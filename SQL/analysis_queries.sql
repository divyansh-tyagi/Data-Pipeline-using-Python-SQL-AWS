-- ============================================
-- NETFLIX DATA ANALYSIS (POSTGRESQL)
-- ============================================

-- 1. Check total records
SELECT COUNT(*) AS total_rows
FROM netflix;


-- ============================================
-- BASIC ANALYSIS
-- ============================================

-- 2. Movies vs TV Shows
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type
ORDER BY total DESC;


-- 3. Top 10 Countries (RAW - not cleaned)
SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 10;


-- ============================================
-- ADVANCED (REAL-WORLD CLEANING)
-- ============================================

-- 4. Top 5 Countries (Cleaned - split multiple countries)
SELECT 
    TRIM(country_split) AS country,
    COUNT(*) AS total
FROM netflix,
LATERAL unnest(string_to_array(country, ',')) AS country_split
GROUP BY country
ORDER BY total DESC
LIMIT 5;


-- 5. Top 5 Genres (Cleaned - split multiple genres)
SELECT
    TRIM(genre_split) AS genre,
    COUNT(*) AS total
FROM netflix,
LATERAL unnest(string_to_array(listed_in, ',')) AS genre_split
GROUP BY genre
ORDER BY total DESC
LIMIT 5;


-- ============================================
-- TIME-BASED ANALYSIS
-- ============================================

-- 6. Content added each year
SELECT year_added, COUNT(*) AS total
FROM netflix
GROUP BY year_added
ORDER BY year_added;


-- Optional: Latest first
SELECT year_added, COUNT(*) AS total
FROM netflix
GROUP BY year_added
ORDER BY year_added DESC;