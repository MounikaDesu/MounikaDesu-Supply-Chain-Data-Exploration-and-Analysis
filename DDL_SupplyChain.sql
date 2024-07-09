CREATE TABLE plantports
(
plant_code 	varchar(50) REFERENCES warehouse(plant_code),
port		varchar(50) NOT NULL
);

CREATE TABLE vmicustomers
(
plant_code	varchar(50) REFERENCES warehouse(plant_code),
customers	varchar(50) NOT NULL
);

CREATE TABLE productsperplant
(
plant_code	varchar(50)  REFERENCES warehouse(plant_code),
product_id	int NOT NULL
);

CREATE TABLE warehouse
(
wh		varchar(50),
cost_per_unit	decimal NOT NULL,
daily_capacity 	int NOT NULL
);

CREATE TABLE freightrates
(
carrier		    varchar(50) NOT NULL,	
orig_port_cd	varchar(50),
dest_port_cd	varchar(50),
minm_wgh_qty	decimal,
max_wgh_qty	    decimal,
svc_cd		    varchar(50),
minimum_cost	decimal,
rate		    decimal,
mode_dsc	    varchar(50),
tpt_day_cnt	    int,
carrier_type	varchar(50) NOT NULL
);

CREATE TABLE orderlist 
(	
order_id 			 decimal,
order_date  		 DATE	,
origin_port			 varchar(50),
carrier				 varchar(50),
tpt			       	 int ,
service_level 		 varchar(50),		
ship_ahead_day_count int,
ship_late_day_count	 int,
customer			 varchar(50),
product_id			 INT,
plant_code			 varchar(50) references warehouse(plant_code),
destination_port	 varchar(50),
unit_quantity		 int,
weight				 decimal	
);

