-- Habitat Comparison
SELECT Location_Type, COUNT(*) AS total_obs
FROM bird_data
GROUP BY Location_Type;

-- Top 10 Species
SELECT Common_Name, COUNT(*) AS species_count
FROM bird_data
GROUP BY Common_Name
ORDER BY species_count DESC
LIMIT 10;

-- Biodiversity
SELECT COUNT(DISTINCT Scientific_Name) AS total_species
FROM bird_data;

-- Weather Impact
SELECT Sky, COUNT(*) AS observations
FROM bird_data
GROUP BY Sky;