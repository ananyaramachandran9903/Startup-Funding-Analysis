SELECT current_database();

SELECT COUNT(*)
FROM public.investments_vc;

SELECT COUNT(*) AS total_startups
FROM investments_vc;

SELECT COUNT(DISTINCT " market ") AS unique_markets
FROM investments_vc;

SELECT COUNT(DISTINCT country_code) AS unique_countries
FROM investments_vc;

SELECT
    status,
    COUNT(*) AS company_count
FROM investments_vc
GROUP BY status
ORDER BY company_count DESC;

SELECT
    " market ",
    COUNT(*) AS company_count
FROM investments_vc
WHERE " market " IS NOT NULL
GROUP BY " market "
ORDER BY company_count DESC
LIMIT 20;

SELECT
    country_code,
    COUNT(*) AS company_count
FROM investments_vc
WHERE country_code IS NOT NULL
GROUP BY country_code
ORDER BY company_count DESC
LIMIT 20;

