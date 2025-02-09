--1. Show me a list of all the beers waiting to ship and how long they still have to sit before I can ship them.
--AS No data provided to bring back results for this question.
select *, DaysLeftBeforeShipping = datediff(day, s.DateShippingAvailable, getdate())
from sales s 
where s.DateShippingAvailable > getdate()
--2. I would like to know which seasons sell the most beer. Show me the number of kegs I sold per season ordered from most sold to least sold.
select AmountPerSeason = sum(s.AmountOfKeg), s.Season
from sales s 
group by s.Season
order by AmountPerSeason desc
--3. Show me how much I money I made in the last year selling beer
--AS No data provided to bring back results for this question.
select TotalProfit = sum(s.AmountOfKeg * s.CostPerKeg)
from sales s 
where datediff(day, s.DateShippingAvailable , getdate()) <= 1