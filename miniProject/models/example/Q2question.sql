{{ config(materialized='view') }}
select p.Body from {{ref('user_xml')}} u join {{ref('post_xml')}} p on u.Id = p.OwnerUserId
where u.DisplayName = 'alexandrul' and p.PostTypeId = 1
