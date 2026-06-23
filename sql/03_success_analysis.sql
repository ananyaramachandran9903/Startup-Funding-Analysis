-- Final Analysis

-- Startup Landscape

SELECT
    " market " as market,
    COUNT(*) AS startups
FROM investments_vc
WHERE " market " IS NOT NULL
GROUP BY " market "
ORDER BY startups DESC
LIMIT 10;

-- Venture Funding by Industry

SELECT
    " market " AS market,
    COUNT(*) AS companies,
    AVG(venture) AS avg_venture_funding
FROM investments_vc
WHERE venture > 0
GROUP BY " market "
HAVING COUNT(*) >= 50
ORDER BY avg_venture_funding DESC
LIMIT 15;


-- Acquisition rate by funding round

SELECT
    CASE
        WHEN "round_A" > 0 THEN 'Raised Series A'
        ELSE 'No Series A'
    END AS series_a_group,
    COUNT(*) AS companies,
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
GROUP BY series_a_group;

SELECT
    CASE
        WHEN "round_B" > 0 THEN 'Raised Series B'
        ELSE 'No Series B'
    END AS series_b_group,
    COUNT(*) AS companies,
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
GROUP BY series_b_group;

SELECT
    CASE
        WHEN "round_C" > 0 THEN 'Raised Series C'
        ELSE 'No Series C'
    END AS series_c_group,
    COUNT(*) AS companies,
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
GROUP BY series_c_group;

-- Funding progression

SELECT
    CASE
        WHEN "round_C" > 0 THEN 'Series C+'
        WHEN "round_B" > 0 THEN 'Series B'
        WHEN "round_A" > 0 THEN 'Series A'
        WHEN seed > 0 THEN 'Seed'
        ELSE 'No Recorded Funding'
    END AS funding_stage,

    status,

    COUNT(*) AS companies

FROM investments_vc

GROUP BY
    funding_stage,
    status

ORDER BY
    funding_stage,
    companies DESC;

SELECT
    CASE
        WHEN "round_C" > 0 THEN 'Series C+'
        WHEN "round_B" > 0 THEN 'Series B'
        WHEN "round_A" > 0 THEN 'Series A'
        WHEN seed > 0 THEN 'Seed'
        ELSE 'No Recorded Funding'
    END AS funding_stage,

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

GROUP BY funding_stage

ORDER BY acquisition_rate DESC;

-- Acquisition rate by industry

SELECT
    " market " AS market,
    COUNT(*) AS companies,
    ROUND(AVG(venture),0) AS avg_venture,
    ROUND(
        100.0 *
        SUM(CASE WHEN status='acquired' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS acquisition_rate
FROM investments_vc
WHERE " market " IS NOT NULL
GROUP BY " market "
HAVING COUNT(*) >= 100
ORDER BY acquisition_rate DESC
LIMIT 15;

