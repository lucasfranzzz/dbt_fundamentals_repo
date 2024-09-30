with 
    funcionarios as (
        select 
            *
        from {{ ref('stg_erp__funcionarios') }}
    )

    , joined as (
        select
            funcionarios.pk_funcionario
            , funcionarios.fk_gerente
            , gerentes.nome_funcionario as nome_gerente
            , funcionarios.nome_funcionario
            , funcionarios.cargo_funcionario
            , funcionarios.dt_nascimento_funcionario
            , funcionarios.dt_contratacao_funcionario
            , funcionarios.cidade_funcionario
            , funcionarios.regiao_funcionario
            , funcionarios.pais_funcionario
        from funcionarios 
        left join funcionarios as gerentes
            on funcionarios.fk_gerente = gerentes.pk_funcionario
    )

select * from joined