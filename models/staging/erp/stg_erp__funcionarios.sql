with 
    fonte_funcionarios as (
    select 
        *
    from {{ source('erp_northwind', 'employee') }}
)

    , renomeacao as (
        select
            cast(id as int)                                 as pk_funcionario
            , cast(reportsto as int)                        as fk_gerente
            , cast(firstname || ' ' || lastname as varchar) as nome_funcionario
            , cast(title as varchar)                        as cargo_funcionario
            , cast(birthdate as date)                       as dt_nascimento_funcionario
            , cast(hiredate as date)                        as dt_contratacao_funcionario
            , cast(city as varchar)                         as cidade_funcionario
            , cast(region as varchar)                       as regiao_funcionario
            , cast(country as varchar)                      as pais_funcionario
        from fonte_funcionarios
    )

select * from renomeacao