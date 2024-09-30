with funcionarios as (
    select
        *
    from {{ ref('int_funcionarios_preparacao') }}
)

select * from funcionarios