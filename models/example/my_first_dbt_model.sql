{{
  config(
    materialized = 'table'
    )
}}

with

source_data as (

    {% if target.name == 'prod' %}

    select 'prod_environment' as environment

    {% elif target.name == 'staging' %}

    select 'staging_environment' as environment

    {% else %}

    select 'dev_environment' as environment

    {% endif %}

)

select * from source_data
