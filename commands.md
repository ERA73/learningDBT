
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

# SOURCES
``` bash
dbt source
dbt source freshness
```

# SEED
```
dbt seed
```

# SNAPSHOT
```
dbt snapshot
```

# TEST
``` bash
dbt test
dbt test --select file_test_name
```

# Macros:
you can create "functions" to call in other modules like tests

# packages
hub.getdbt.com

into the root project folder, create a file named <span style='color:white;background:green;padding:0px 3px;border-radius:5px'>***packages.yml***</span> and write each package you need to install as follows:
``` yml
packages:
  - package: dbt-labs/dbt_utils
    version: 1.1.1
```

After adding all the packages, you most run the following command to install all the dependencies:
``` bash
dbt deps
```

# full refresh
``` bash
dbt run --full-refresh
dbt run --full-refresh --select fct_reviews
```

# Documantation
Edit the file <span style='color:white;background:green;padding:0px 3px;border-radius:5px'>***models/schema.yml***</span> and add the tag <u>**description**</u> as follows:
``` yml
models: 
  - name: dim_listings_cleansed
    description: Cleaansed table which contains Airbnb listings.
    columns:

      - name: listing_id
        description: Primary key for the listing
        tests: 
          - unique
          - not_null
```
After adding all descrition tags, you most run the following command to generate the documentation:
``` bash
dbt docs generate
```
And for watch the documentasrion you can run a server at <span style='color:white;background:green;padding:0px 3px;border-radius:5px'>***localhost:8080***</span> as follows:
``` bash
dbt docs serve
```