Query1)
SELECT Origin_Port, COUNT(Origin_Port) AS max_port_utilised_at_origin  
FROM orderlist 
GROUP BY Origin_Port
ORDER BY max_port_utilised_at_origin DESC LIMIT 1; 

Query2)
SELECT Destination_Port, COUNT( Destination_Port) AS max_port_utilised_at_destination 
FROM orderlist
GROUP BY  Destination_Port 
ORDER BY max_port_utilised_at_destination DESC LIMIT 1; 

Query3)
SELECT product_id, count(product_id)
from orderlist 
group by product_id
having count(product_id) >100;

Query4)
select product_id, sum(Unit_quantity)
from orderlist
group by product_id
Order by sum(Unit_quantity) desc limit 50;

Query5)
Select plant_code , (Cost_Per_Unit * daily_capacity) as full_capacity_cost from warehouse;

Query6)
Select w.Plant_Code 
from Warehouse w
where not exists(
select o.Plant_Code 
from orderlist o 
where o.Plant_Code=w.Plant_Code )
order by w.Plant_Code ;

Query7)
select product_id, round(avg(unit_quantity),3) as Avg_quanty_sold_per_product 
from orderlist 
group by product_id 
order by Avg_quanty_sold_per_product desc
limit 20;

Query8)
SELECT 	distinct(a.customer),
		sum(a.unit_quantity) as total_quantity, 
		b.plant_code, b.port,
		c.cost_per_unit,
		sum((a.unit_quantity*c.cost_per_unit)) as total_cost
FROM 		orderlist as a
Inner Join 	plantports as b
ON 		a.plant_code = b.plant_code
Inner Join 	warehouse as c
ON 		a.plant_code = c.plant_code
GROUP BY	a.customer,
		b.plant_code, 
		b.port,
		c.cost_per_unit
ORDER BY 	a.customer desc;

Query9)
CREATE VIEW volume AS 
SELECT 	    o.plant_code, 
	    count(o.order_id),
	    w.daily_capacity, 
	    (w.daily_capacity - count(o.order_id)) as sub
FROM        orderlist as o
INNER JOIN  warehouse as w
ON     	    o.plant_code = w.plant_code
GROUP BY    o.plant_code,w.daily_capacity;


SELECT 	 *,
	 Case 
	   When sub > 0 Then 'low volume'
	   Else  'high volume' 
	   END condition
FROM 	 volume
ORDER BY sub;

Query10)
SELECT 		f.carrier as Name_of_carrier,
		round(avg(tpt_day_cnt),2) as trip_lead_time
FROM 		freightrates f
GROUP BY 	f.carrier
ORDER BY 	f.carrier;
