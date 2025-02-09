use BeerDB 
go 

drop table if exists Sales 
go

create table dbo.Sales(
    SalesId int not null identity primary key,
    BeerName varchar(30) not null constraint ck_Sales_BeerName_cannot_be_blank check(BeerName <> ''),
    BeerType varchar(6) not null constraint ck_Sales_BeerType_either_Lager_IPA_Stout_or_Porter check(BeerType in ('Lager', 'IPA', 'Stout', 'Porter')),
    Season varchar(7) not null constraint ck_Sales_Season_either_Summer_Winter_Spring_or_Fall check(Season in ('Summer', 'Winter', 'Spring', 'Fall')),
    ABV decimal(4,2) not null constraint ck_Sales_ABV_between_2_and_8_and_a_half check(ABV between 2 and 8.5),
    AmountOfKeg int not null constraint ck_Sales_AmountOfKeg_between_1_and_6 check(AmountOfKeg between 1 and 6),
    DateBrewed date not null constraint ck_Sales_DateBrewed_before_the_current_date check(DateBrewed <= getdate()),
    DateShippingAvailable as dateadd(day, 42, DateBrewed) persisted,
    Code as case BeerType 
                when 'Lager' then 1
                when 'IPA' then 2
                when 'Stout' then 3
                when 'Porter' then 4
            end,
    CostPerKeg decimal(5,2) not null constraint ck_Sales_CostPerKeg_must_be_between_60_and_100 check(CostPerKeg between 60 and 100)
)
go