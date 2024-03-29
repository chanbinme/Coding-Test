select mf.member_name, rr.review_text, date_format(rr.review_date, "%Y-%m-%d")
from member_profile mf
join rest_review rr 
on mf.member_id = rr.member_id
where mf.member_id = (
        select member_id
        from rest_review
        group by member_id
        order by count(*) desc
        limit 1
      )
order by rr.review_date, rr.review_text