--1. Total spend per country
select country,
sum(amtliq+amtvege+amtnonveg+amtpes+amtchocolates+amtcomm) as total_spent
from marketing_data
group by country
order by total_spent desc
 
--2. Total spend per product per country
select country,
sum(amtliq) as total_spend_liquor,
sum(amtvege) as total_spend_veg,
sum(amtnonveg) as total_spend_nonveg,
sum(amtpes) as total_spend_fish,
sum(amtchocolates) as total_spend_choco,
sum(amtcomm) as total_spend_comms
from marketing_data
group by country
order by country desc

--3. which products are the most popular in each country
--USA - Liquor
--Spain - Liquor
--South Africa - Liquor
--Montenegro - Liquor
--India - Liquor
--Germany - Liquor
--Canada - Liquor
--Australia - Liquor

--4. Which products are the most popular based on marital status
select marital_status,
sum(amtliq) as total_spend_liquor,
sum(amtvege) as total_spend_veg,
sum(amtnonveg) as total_spend_nonveg,
sum(amtpes) as total_spend_fish,
sum(amtchocolates) as total_spend_choco,
sum(amtcomm) as total_spend_comms
from marketing_data
group by marital_status

--In a relationship - 
--Widowed - liquor
--Married - liquor
--Single - liquor
--Divorced - liquor

--5. which products are the most popular based on whether or not there are children or teens in the home
select
case when kidhome+teenhome=0 then 'no_kids'
else 'have kids'
end as kids,
sum(amtliq) as total_spend_liquor,
sum(amtvege) as total_spend_veg,
sum(amtnonveg) as total_spend_nonveg,
sum(amtpes) as total_spend_fish,
sum(amtchocolates) as total_spend_choco,
sum(amtcomm) as total_spend_comms
from marketing_data
group by kids

--have kids - liquor 
--no kids - liquor

--6. social media effectiveness by country
select
m.country,
sum(a.bulkmail_ad) as bulkmail,
sum(a.twitter_ad) as twitter,
sum(a.instagram_ad) as instagram,
sum(a.facebook_ad) as facebook,
sum(a.brochure_ad) as brochure
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--7. social media effectiveness by marital status
select
m.marital_status,
sum(a.bulkmail_ad) as bulkmail,
sum(a.twitter_ad) as twitter,
sum(a.instagram_ad) as instagram,
sum(a.facebook_ad) as facebook,
sum(a.brochure_ad) as brochure
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--8. social media effectiveness by education
select
m.education,
sum(a.bulkmail_ad) as bulkmail,
sum(a.twitter_ad) as twitter,
sum(a.instagram_ad) as instagram,
sum(a.facebook_ad) as facebook,
sum(a.brochure_ad) as brochure
from marketing_data m
join ad_data a
on m.id=a.id
group by 1


--9. total spend per product for bulkmail
select
a.bulkmail_ad,
sum(m.amtliq) as total_spend_liquor,
sum(m.amtvege) as total_spend_veg,
sum(m.amtnonveg) as total_spend_nonveg,
sum(m.amtpes) as total_spend_fish,
sum(m.amtchocolates) as total_spend_choco,
sum(m.amtcomm) as total_spend_comms
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--10. total spend per product for twitter
select
a.twitter_ad,
sum(m.amtliq) as total_spend_liquor,
sum(m.amtvege) as total_spend_veg,
sum(m.amtnonveg) as total_spend_nonveg,
sum(m.amtpes) as total_spend_fish,
sum(m.amtchocolates) as total_spend_choco,
sum(m.amtcomm) as total_spend_comms
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--11. total spend per product for instagram
select
a.instagram_ad,
sum(m.amtliq) as total_spend_liquor,
sum(m.amtvege) as total_spend_veg,
sum(m.amtnonveg) as total_spend_nonveg,
sum(m.amtpes) as total_spend_fish,
sum(m.amtchocolates) as total_spend_choco,
sum(m.amtcomm) as total_spend_comms
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--12. total spend per product for facebook
select
a.facebook_ad,
sum(m.amtliq) as total_spend_liquor,
sum(m.amtvege) as total_spend_veg,
sum(m.amtnonveg) as total_spend_nonveg,
sum(m.amtpes) as total_spend_fish,
sum(m.amtchocolates) as total_spend_choco,
sum(m.amtcomm) as total_spend_comms
from marketing_data m
join ad_data a
on m.id=a.id
group by 1

--13. total spend per product for twitter
select
a.brochure_ad,
sum(m.amtliq) as total_spend_liquor,
sum(m.amtvege) as total_spend_veg,
sum(m.amtnonveg) as total_spend_nonveg,
sum(m.amtpes) as total_spend_fish,
sum(m.amtchocolates) as total_spend_choco,
sum(m.amtcomm) as total_spend_comms
from marketing_data m
join ad_data a
on m.id=a.id
group by 1


