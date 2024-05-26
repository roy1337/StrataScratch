ABC Corp is a mid-sized insurer in the US and in the recent past their fraudulent claims have increased significantly for their personal auto insurance portfolio. They have developed a ML based predictive model to identify propensity of fraudulent claims. Now, they assign highly experienced claim adjusters for top 5 percentile of claims identified by the model.
Your objective is to identify the top 5 percentile of claims from each state. Your output should be policy number, state, claim cost, and fraud score.

fraud_score table 
  
policy_num:
varchar
state:
varchar
claim_cost:
int
fraud_score:
float


answer
  
with cte as (
select policy_num, state, claim_cost, 
NTILE(20) over (partition by state order by fraud_score desc) as rank
from fraud_score
)

select * from cte
where rank <=1
