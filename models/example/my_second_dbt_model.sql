with

first_dbt_model as (

    select * from {{ ref('my_first_dbt_model') }}

)

select * from first_dbt_model
