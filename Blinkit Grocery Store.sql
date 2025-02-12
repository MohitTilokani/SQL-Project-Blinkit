use blinkit;

select * from blinkit_1;

select item_identifier from blinkit_1;
select count(item_identifier) from blinkit_1;

select max(item_weight) from blinkit_1;
select min(item_weight) from blinkit_1;
select avg(item_weight) from blinkit_1;

select count(Item_Fat_Content) from blinkit_1
where Item_Fat_Content ='Low Fat';

select count(Item_Fat_Content) from blinkit_1
where Item_Fat_Content ='Regular';

select max(Item_MRP) from blinkit_1;

select min(Item_MRP) from blinkit_1;

select Item_Identifier,Item_Fat_Content, Item_Type, Item_MRP from blinkit_1
where item_MRP > 200;

select max(Item_MRP) from blinkit_1
where Item_Fat_Content =  'Low Fat';

select min(Item_MRP) from blinkit_1
where Item_Fat_Content =  'Low Fat';

select * from blinkit_1
where Item_MRP = (select max(Item_MRP) from blinkit_1 where Item_Fat_Content = 'Low Fat');


select Item_Fat_Content,Item_MRP from blinkit_1
where item_fat_content = 'Low Fat'
and Item_MRP = (select max(Item_MRP) from blinkit_1 where Item_Fat_Content = 'Low Fat');

select * from blinkit_1 
where Item_MRP between 50 and 100;

select distinct item_fat_content from blinkit_1;


select * from blinkit_1
order by  Item_MRP desc;


select * from blinkit_1
order by  Item_Outlet_Sales asc;

select * from blinkit_1
order by  Item_Type asc;


select * from blinkit_1
where Item_Type in ('Dairy', 'Meat');

select distinct outlet_size from blinkit_1;

select distinct Outlet_Location_Type from blinkit_1;

select distinct Outlet_Type from blinkit_1;

select Item_Type, count(*) as Item_Type from blinkit_1 
group by Item_Type
order by Item_Type desc;

select Outlet_Size , count(*) as Outlet_Size from blinkit_1 
group by Outlet_Size 
order by Outlet_Size asc;

select Outlet_Type , count(*) as Outlet_Type from blinkit_1 
group by Outlet_Type 
order by Outlet_Type desc;

select Outlet_Location_Type , count(*) as Outlet_Location_Type from blinkit_1 
group by Outlet_Location_Type 
order by Outlet_Location_Type desc;

select Item_Type, max(Item_MRP) as max_mrp from blinkit_1
group by Item_Type;

select Item_Type, min(Item_MRP) as min_mrp from blinkit_1
group by Item_Type;

select * from blinkit_1;

select Outlet_Establishment_Year , min(Item_MRP) as min_mrp from blinkit_1
group by Outlet_Establishment_Year
order by min_mrp desc;


select Outlet_Establishment_Year , max(Item_MRP) as max_mrp from blinkit_1
group by Outlet_Establishment_Year
order by max_mrp desc;

select Outlet_Size , avg(Item_MRP) as avg_mrp from blinkit_1
group by Outlet_Size 
order by avg_mrp desc;

select Outlet_Type , avg(Item_MRP) as avg_mrp from blinkit_1
group by Outlet_Type
order by avg_mrp asc;

select Outlet_Type , max(Item_MRP) as max_mrp from blinkit_1
group by Outlet_Type;

select Outlet_Type , min(Item_MRP) as min_mrp from blinkit_1
group by Outlet_Type;

select Item_Type, max(Item_Weight) as max_weight from blinkit_1
group by Item_Type;

select Item_Type, min(Item_Weight) as min_weight from blinkit_1
group by Item_Type;

select Outlet_Establishment_Year, max(Item_Weight) as max_weight from blinkit_1
group by Outlet_Establishment_Year;

select Outlet_Type, min(Item_Weight) as min_weight from blinkit_1
group by Outlet_Type;

select item_type, sum(item_outlet_sales) as total_sales from blinkit_1
where Outlet_Location_Type= 'Tier 1'
group by Item_Type;

select item_type, sum(item_outlet_sales) as total_sales from blinkit_1
where Item_Fat_Content  in ('Low Fat','LF')
group by Item_Type;

select * from blinkit_1
where Item_Weight is null;
	
update blinkit_1 
set item_weight = (select avg(item_weight) from item_weight where item_weight is not null)
where item_weight is null;


