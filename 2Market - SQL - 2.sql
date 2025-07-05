/*Which social media platform (Twitter, Instagram, or Facebook) is the most effective method 
of advertising in each country? (In this case, consider the total number of lead conversions 
as a measure of effectiveness)*/
--Spain= Instagram
--Canada= Twitter
--India= Bulkmail
--Australia= Instagram
--USA= Bulkmail
--Montenegro= Bulkmail
--South Africa= Bulkmail & Instagram
--Germany= Twitter

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


/*Which social media platform (Twitter, Instagram, or Facebook) is the most effective method 
of advertising based on marital status? (In this case, consider the total number of lead 
conversions as a measure of effectiveness)*/
--In a relationship= Instagram
--Widowed= Twitter
--Married= Instagram
--Single= Bulkmail
--Divorced= Bulkmail


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


/*Which social media platform (Twitter, Instagram, or Facebook) is the most effective method 
of advertising based on education level? (In this case, consider the total number of lead 
conversions as a measure of effectiveness)*/
--Basic= Bulkmail
--Masters= Twitter
--Undergraduate= Instagram
--Second Cycle= Bulkmail
--PhD= Twitter

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


/*Which social media platform(s) seem(s) to be the most effective per country? 
(In this case, assume that purchases were in some way influenced by lead conversions from 
a campaign). Hint: You’ll want to generate the amount spent per product type per country 
and include a total of the ads for each of the social media platforms. Then, review the 
output to determine whether there is anything interesting related to the amount spent 
per product in each country and which social media platforms were used for advertising*/

select
m.country,
sum(a.bulkmail_ad) as bulkmail,
sum(a.twitter_ad) as twitter,
sum(a.instagram_ad) as instagram,
sum(a.facebook_ad) as facebook,
sum(a.brochure_ad) as brochure,
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

