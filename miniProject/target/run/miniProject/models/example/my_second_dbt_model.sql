
  create or replace  view ubuntu_db.ubuntu_schema.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from ubuntu_db.ubuntu_schema.my_first_dbt_model
where id = 1
  );
