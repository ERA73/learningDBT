
### generate de code por SNF executed when execute "dbt run", you can use it for debug
``` excel
code target/run/dbtlearn/models/dim/dim_listings_cleansed.sql
``` 


``` sql
SELECT * FROM "AIRBNB"."DEV"."FCT_REVIEWS" WHERE listing_id = 3176;
INSERT INTO "AIRBNB"."DEV"."FCT_REVIEWS" VALUES (3176, CURRENT_TIMESTAMP(), 'Zoltan', 'excellent stay!', 'positive');

DROP VIEW AIRBNB.DEV.SRC_HOSTS;
DROP VIEW AIRBNB.DEV.SRC_LISTINGS;
DROP VIEW AIRBNB.DEV.SRC_REVIEWS;
DROP VIEW AIRBNB.DEV.DIM_LISTINGS_WITH_HOSTS;
```