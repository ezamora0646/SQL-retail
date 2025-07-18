# SQL Retail Project Documentaiton

## Schema Notes 
- loaded 5 tables into PostgreSQL w pgAdmin4
- table relationships:
    
    customers table 
    * pkey = customer_key
    * zip_code values vary by country some strings some 4-5 digits 
    
    products table 
    * pkey = product key

    sales table 
    * pkey = sale_id
    * sales.product_key --> products.product_key
    * sales.store_key --> stores.store_key

    stores table 
    * pkey = store_key

## Initial Observations (Data patterns / irregularities)
- sales: no duplicate rows (n= 60K+)
    - only 26k+ unique order numnbers
    - ONE ORDER MANY PRODUCTS

- products: no duplicate rows (n= 2517)
    - ONE PRODUCT MANY SALES

- customers: no duplicate rows (n= 15K+)
    - all unique customer_ids
    - ONE CUSTOMER MANY ORDERS

- stores: 67 unique stores
- ONE STORE MANY SALES 

SO one customer to many sales of many products 

# PLANNED ANALYSIS 
- Analyze average order value (AOV) by store

- Identify seasonal sales trends

- Join exchange rates to calculate USD revenue
