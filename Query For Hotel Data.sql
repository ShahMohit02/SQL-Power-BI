select * from Hotel2018
Union 
select * from Hotel2019
Union 
select * from Hotel2020

with hotels as
(
select * from Hotel2018
Union
select * from Hotel2019
Union
select * from Hotel2020
)

Select * from Hotels


with hotels as
(
select * from Hotel2018
Union
select * from Hotel2019
Union
select * from Hotel2020
)

Select stays_in_week_nights,stays_in_weekend_nights  from Hotels


Go
with hotels as
(
select * from Hotel2018
Union
select * from Hotel2019
Union
select * from Hotel2020
)

Select arrival_date_year,(stays_in_week_nights+stays_in_weekend_nights)*adr as Revenue from Hotels group by arrival_date_year,stays_in_week_nights,stays_in_weekend_nights,adr



Go
with hotels as
(
select * from Hotel2018
Union
select * from Hotel2019
Union
select * from Hotel2020
)

Select arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue from Hotels group by arrival_date_year



Go
with hotels as
(
select * from Hotel2018
Union 
select * from Hotel2019
Union
select * from Hotel2020
)

Select hotel,arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue from Hotels group by arrival_date_year,hotel


Select arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue from Hotel2018 group by arrival_date_year





select * from MarketSegment








Select arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue from Hotel2018 group by arrival_date_year
select * from MarketSegment
select * from Hotel2018
select * from MealCost

Go
Select a.arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue,b.Discount from Hotel2018 a
inner join MarketSegment b on a.market_segment=b.market_segment group by a.arrival_date_year,b.Discount
Go

Select a.arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue,b.Discount,c.cost,c.meal   from Hotel2018 a
left join MarketSegment b on a.market_segment=b.market_segment 
left join mealcost c on c.meal=a.meal group by a.arrival_date_year,b.Discount,c.Cost,c.meal


Select *  from Hotel2018 a
left join MarketSegment b on a.market_segment=b.market_segment 
left join mealcost c on c.meal=a.meal

Go
------------------------------------------------------------------------------------------------
-----------Query to put in Power Bi-------------------------------------------------------
with hotels as
(
select * from Hotel2018
Union
select * from Hotel2019
Union
select * from Hotel2020
)
Select *  from hotels
left join MarketSegment b on hotels.market_segment=b.market_segment 
left join mealcost c on c.meal=hotels.meal
-----------------------------------------------------------------------------------------------
