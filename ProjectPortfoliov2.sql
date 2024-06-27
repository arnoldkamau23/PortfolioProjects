select Branch, sum(Total_Sale) as totalsaleperbranch
from afghanbrotpro
group by branch
-- shows total sales per branch


select branch, round(sum(SubTotal), 2) as FVperbranch, 
round(sum(commission_), 2) as totalcommision
from afghanbrotpro
Group by branch
-- shows the food value and the commission per branch



select branch, round(sum(commission_), 2) as totalcommision, round(sum(SubTotal), 2) as FVperbranch
from afghanbrotpro
group by branch
-- shows the total commission and the FV per branch

SELECT branch,
round(sum(commission_), 2) as totalcommision,
round(sum(SubTotal), 2) as FVperbranch,
round(SUM(commission_) / SUM(Subtotal),2) * 100 AS Commission_Per_FVPerBranch
FROM afghanbrotpro
GROUP BY Branch
order by 2 desc;
-- shows the commission rate per branch

SELECT branch,
round(sum(Payment_Handling_Charges), 2) as bank_fees,
round(sum(SubTotal), 2) as FVperbranch,
SUM(Payment_Handling_Charges) / SUM(Subtotal) * 100 AS bank_fees_per_FVperbranch
FROM afghanbrotpro
GROUP BY Branch
order by 2 desc;

-- shows the bank handling fees per branch

select Branch, count(*) as count_tpro_orders_per_branch
from afghanbrotpro
where Is_TPro = "yes" and Status = "Successful"
group by branch;
-- shows the branches with the highest tpro orders

select branch, sum(Free_Delivery_Funding) as Tpro_Revenue
from afghanbrotpro
group by branch
order by Tpro_Revenue desc
limit 3;
-- shows the top three tpro branches with highest tpro revenue

select branch, 
sum(Total_Sale) as total_sale,
sum(Free_Delivery_Funding) as Tpro_Revenue,
sum(Free_Delivery_Funding) / sum(Total_Sale) * 100 as tpro_revenuecontribution
from afghanbrotpro
group by branch
order by 3 desc
limit 4; 
-- shows the branches with the highest sales contribution compared to tprorevenue

