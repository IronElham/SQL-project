# SQL-project

**Introduction:** 

Digital marketing agency Dataset is extracted from Kaggle. In this project I will be data analyst a representative of a Digital marketing agency explaing their outcome marketing campaign. 
Business case: The purpose of this analysis is to provide an overview of some marketing metrics/ KPIs for the current dataset over month of February 2021. 

Data contains 11 columns information of 308 marketing campagins and required little data cleaning. 

I used MySQL Benchmark to have an overview of dataset with some queries. Afterwards I used Python to visualize some of the metrics extracted from SQL and separately on python performed some EDA. 
 

**Findings:**

Daily gross profit fluctuated over month, 19 Feb 2021 has the highest profit. 

Campaigns Gross Profit:  4 campaigns from 11 made breakeven, Youetube_blogger highest profit 

Number of campaign with positive and negative Return on Investement of Marketing positive (168) and negative (140)

Campaigns with Positive ROI : Youtube blogger highest ROI 

Conversion rate (leads-orders): Facebook_retargeting highest conversion rate

**Hypotheses:**

1. Profit-loss and category: 

Null hypothesis: The mean profitability is the same across all categories

Alternative hypothesis: At least one category has a significantly different mean profitability

Result of ANOVA test: 
Reject null hypothesis, influencer(instagram and youtube blogger) has the highest profit with significant different in profit

2. leads and orders: 

Null hypothesis: The mean of number of leads generated through campaigns is equal the number of orders placed.

Alternative hypothesis: The mean of number of leads generated through campaigns is significantly different from the number of orders placed

Result of Paired t test
Reject null hypothesis

*For further information please refer to the Jupyther notebook and presentation on this repo.

