with 
    fonte_categorias as (
    select 
        *
    from {{ source('erp_northwind', 'category') }}
)

    , renomeacao as (
        select
            cast(id as int)                 as pk_categoria
            , cast(categoryname as varchar) as nome_categoria
            , cast(description as varchar)  as descricao_categoria
        from fonte_categorias
    )

select * from renomeacao