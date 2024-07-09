COPY plantports FROM 'C:\Program Files\PostgreSQL\15\project\project556\PlantPorts.csv' delimiter ',' CSV Header;
COPY vmicustomers FROM 'C:\Program Files\PostgreSQL\15\project\project556\VmiCustomers.csv' delimiter ',' CSV Header;
COPY productsperplant FROM 'C:\Program Files\PostgreSQL\15\project\project556\ProductsPerPlant.csv' delimiter ',' CSV Header;
COPY warehouse FROM 'C:\Program Files\PostgreSQL\15\project\project556\Warehouse.csv' delimiter ',' CSV Header;
COPY freightrates FROM 'C:\Program Files\PostgreSQL\15\project\project556\FreightRates.csv' DELIMITER ',' CSV Header;
COPY orderlist FROM 'C:\Program Files\PostgreSQL\15\project\project556\OrderList.csv' delimiter ',' CSV Header;

ALTER TABLE warehouse
ADD CONSTRAINT wh_pkey PRIMARY KEY (wh);

ALTER TABLE warehouse
RENAME COLUMN wh TO plant_code;

ALTER TABLE orderlist
ADD CONSTRAINT order_id_pkey PRIMARY KEY (order_id);