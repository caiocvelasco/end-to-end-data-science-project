
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml
    For example, according to dbt_project.yml, all models are materialized as views
    Therefore, the jinja below overriding the default materialization as a view
    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

-- Below, we use a CDE
with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
