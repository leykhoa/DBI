select C.company_code, C.founder, count(Distinct e.Lead_manager_code), 
count(distinct E.senior_manager_code), count(distinct E.manager_code), 
count(distinct E.employee_Code) from Company C
join employee E on C.Company_Code = E.company_code group by c.Company_code, C.Founder order by C.company_Code;