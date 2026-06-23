# From Seed to Exit: How Venture Capital Progression Influences Startup Success

## Project Overview
Venture capital plays a critical role in the growth and development of startups, yet not all companies experience the same outcomes. This project analyzes over 54,000 global startup records to investigate how funding progression, industry characteristics, and VC investment patterns relate to startup acquisition outcomes.

Using PostgreSQL and SQL-based analysis, I explored startup activity across industries, countries, and funding stages to identify factors associated with successful exits and long-term growth.

## Business Objective
The objective of this project was to understand the startup funding lifecycle and identify patterns associated with startup success.

### Key Business Questions
1. How does acquisition likelihood change as startups progress from Seed funding to later-stage funding rounds?
2. Which industries receive the highest levels of venture capital investment?
3. Which startup sectors demonstrate the strongest acquisition outcomes?
4. Are successful startup exits concentrated within specific industries or funding stages?

## Dataset
Source: Crunchbase Startup Investments Dataset (Kaggle)

Dataset Scope:
54,294 startup companies
754 unique industries
116 countries
Funding stage, venture capital, and company outcome information

Key Variables Used:
Company Status
Industry / Market
Country
Venture Funding Amount
Seed Funding
Series A Funding
Series B Funding
Series C Funding
Funding Rounds

## Methodology
### 1. Data Exploration
Performed initial exploration of startup activity, company outcomes, industry and geographic distribution.
### 2. Data Cleaning and Preparation
Imported raw startup data into PostgreSQL
Validated data quality and column structures
Standardized fields for analysis
Investigated missing and incomplete records
### 3. Funding and Industry Analysis
Analyzed venture capital allocation across industries and startup sectors to identify the highest levels of investment.
### 4. Funding Progression Analysis
Developed funding-stage groups to evaluate how startup outcomes change as companies progress through the venture capital lifecycle.
### 5. Acquisition Outcome Analysis
Calculated acquisition rates across industries and funding stages to identify characteristics associated with successful startup exits.

## Key Findings
### Finding 1: Startup Activity Is Concentrated in Technology-Oriented Industries
Software and Biotechnology represented the largest startup sectors within the dataset, highlighting the dominance of technology-driven entrepreneurship.
### Finding 2: Venture Capital Is Highly Concentrated
Technology intensive industries such as Technology, Entertainment, Medical Devices, Clean Technology, and Semiconductors received the highest average levels of venture capital investment.
### Finding 3: Funding Progression Is Strongly Associated with Acquisition Outcomes
Startups that advanced through later funding rounds demonstrated substantially higher acquisition rates.
### Finding 4: Later-Stage Startups Were Significantly More Likely to Be Acquired
Series C+ startups were approximately 6 times more likely to be acquired than seed-stage startups, suggesting that progression through venture capital funding stages is strongly associated with successful exit outcomes.

## Business Implications
The results suggest that funding-stage progression may serve as an important indicator of startup maturity and acquisition potential.
For investors, startup operators, and strategy teams, monitoring advancement through funding rounds may provide valuable insight into future business outcomes and exit opportunities.

## Project Structure
```text
startup-funding-analytics/
│
├── README.md
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_funding_analysis.sql
│   └── 03_final_analysis.sql
│
├── outputs/
│   ├── startup_landscape.csv
│   ├── venture_funding_by_industry.csv
│   ├── acquisition_rate_by_industry.csv
│   └── funding_progression.csv
│
├── dashboard/
│   └── startup_funding_dashboard.twbx
│
└── visuals/
    └── startup_dashboard.png
```

## Future Improvements
- Build predictive models to estimate acquisition probability based on funding characteristics.
- Incorporate funding dates to analyze startup growth over time.



