use service_branchDB
go


select sum(total_revenue) "sum total revenue"
from Services_data



select sum(total_revenue) "sum total revenue", b.Region
from Services_data s , Branch_data b 
where b.Branch_ID = s.branch_id
group by b.Region


select sum(total_revenue) "sum total revenue" , sum(hours) "sum of hours" , s.department
from Services_data s
group by s.department


select sum(total_revenue) "sum total revenue" , month(s.service_date) "month" , b.Region
from Services_data s , Branch_data b
where b.Branch_ID = s.branch_id
group by s.service_date , b.Region


select s.client_name , sum(total_revenue) "sum of total revnue"
from Services_data s
group by s.client_name
