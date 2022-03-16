select X.hacker_id, h.name, sum(score) total_score from
(select hacker_id, challenge_id, max(score) score
from Submissions group by hacker_id, challenge_id) as X
join Hackers as h
on X.hacker_id = h.hacker_id
group by X.hacker_id, h.name
having total_score > 0
order by total_score desc, X.hacker_id;