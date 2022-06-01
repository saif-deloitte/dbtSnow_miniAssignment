select p.Body from {{ref('user_xml')}} u, {{ref('post_xml')}} p where u.DisplayName like '%nau%' and p.PostTypeId = 1
