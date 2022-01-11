Find all posts which were reacted to with a heart

select distinct fp.* from facebook_reactions fr
join facebook_posts fp
on fr.post_id = fp.post_id
and fr.reaction = 'heart'
