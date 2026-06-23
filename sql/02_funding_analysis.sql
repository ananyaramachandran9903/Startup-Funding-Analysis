-- Funding Analysis

SELECT
    status,
    AVG(seed) AS avg_seed_funding,
    AVG(venture) AS avg_venture_funding
FROM investments_vc
GROUP BY status
ORDER BY avg_venture_funding DESC;

SELECT
    " market ",
    AVG(venture) AS avg_venture_funding
FROM investments_vc
WHERE venture > 0
GROUP BY " market "
ORDER BY avg_venture_funding DESC
LIMIT 20;

SELECT
    " market ",
    COUNT(*) AS company_count,
    AVG(venture) AS avg_venture_funding
FROM investments_vc
WHERE venture > 0
GROUP BY " market "
HAVING COUNT(*) >= 50
ORDER BY avg_venture_funding DESC
LIMIT 20;

SELECT
    " market ",
    COUNT(*) AS total_companies,
    SUM(
        CASE
            WHEN status = 'acquired' THEN 1
            ELSE 0
        END
    ) AS acquired_companies,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN status = 'acquired' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS acquisition_rate
FROM investments_vc
WHERE " market " IS NOT NULL
GROUP BY " market "
HAVING COUNT(*) >= 50
ORDER BY acquisition_rate DESC
LIMIT 20;


