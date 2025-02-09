/*
BeerDB
Sales
BeerName varchar(30) not null not blank
BeerType varchar(6) not null must be one of 4 types
Season varchar(7) not null must be one of the 4 seasons
ABV decimal (4,2) not null between 2 and 8.5
AmountOfKeg between 1 and 6
DateBrewed date not null before current date
DateShippingAvailable computed 42 days after DateBrewed
Code computed column
CostPerKeg decimal(5,2) not null between 60 and 100
*/