with produtos as (
    select
        *
    from {{ ref('int_produtos_enriquecida') }}
)

select * from produtos