use BeerDB 
go
delete Sales 
go

insert Sales(BeerName, BeerType, Season, ABV, AmountOfKeg, DateBrewed, CostPerKeg)
select 'Oktober Fest', 'Lager', 'Fall', 2.5, 1, '2020-09-02', 60
union select 'Hazy Dazy', 'IPA', 'Summer', 6.3, 2, '2020-05-23', 83.50
union select 'Winter Porter', 'Porter', 'Winter', 2, 1, '2020-12-22', 63.99
union select 'Burmuda Stout', 'Stout', 'Summer', 2.2, 1, '2021-07-10', 64.20
union select 'Pumkin Ale', 'Lager', 'Fall', 2.5, 4, '2021-08-04', 75
union select 'Oktober Fest', 'Lager', 'Fall', 2.5, 2, '2021-08-21', 73.30
union select 'Double IPA', 'IPA', 'Summer', 8, 6, '2022-05-12', 85
union select 'Christmas Stout', 'Stout', 'Winter', 5, 1, '2022-11-08', 69.99
union select 'Pumpkin Ale', 'Lager', 'Fall', 2.5, 3, '2022-08-20', 62
union select 'Double IPA', 'IPA', 'Spring', 8, 1, '2023-02-01', 74.50
union select 'Hazy Dazy', 'IPA', 'Summer', 6.3, 2, '2023-06-12', 69.99
union select 'Double IPA', 'IPA', 'Winter', 8, 1, '2023-11-21', 74.50
union select 'Oktober Fest', 'Lager', 'Fall', 2.5, 4, '2024-07-25', 63

go