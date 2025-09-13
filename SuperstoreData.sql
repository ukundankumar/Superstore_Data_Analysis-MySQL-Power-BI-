select* from superstoredata

select count(distinct RowID) as Total_Row,
	count(distinct OrderID) as Total_Orders,
	count(distinct CustomerID) as Total_Customers,
    cast(sum(Sales) as decimal(10,2)) as Total_Sales,
    sum(Quantity) as Total_Quantity,
    cast(sum(Profit) as decimal(10,2)) as Total_Profits
    from superstoredata

select ShipMode, cast(sum(Profit) as decimal(10,2)) as Total_Profit
	from superstoredata
    group by ShipMode
    order by ShipMode asc
    
select Segment, cast(sum(Profit) as decimal(10,2)) as Total_Profit
	from superstoredata
    group by Segment
    order by Segment asc
    
select City, cast(sum(Profit) as decimal(10,2)) as Top_10_Cities_Total_Profit
	from superstoredata
    group by 1
    limit 10
    
select State, cast(sum(Profit) as decimal(10,2)) as Top_10_States_Total_Profit
	from superstoredata
    group by 1
    limit 10
    
select Region, cast(sum(Profit) as decimal(10,2)) as Total_Profit
	from superstoredata
    group by 1
    order by 1 desc
    
select Category, cast(sum(Profit) as decimal(10,2)) as Total_Profit
	from superstoredata
    group by Category
    order by Category desc
    
select cast(cast(sum(Sales) as decimal(10,2)) / cast(count(distinct OrderID) as decimal(10,2)) as decimal(10,2)) as Average_Sales_Per_Order 
from superstoredata

select cast(cast(sum(Sales) as decimal(10,2)) / cast(sum(profit) as decimal(10,2)) as decimal(10,2)) as Average_Profit_Per_Sales 
from superstoredata
