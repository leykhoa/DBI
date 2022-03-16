select h.hacker_id , h.name from submissions s
join hackers h on h.hacker_id = s.hacker_id
join challenges c on c.challenge_id = s.challenge_id
join difficulty d on d.difficulty_level = c.difficulty_level
where  d.difficulty_level = c.difficulty_level  and s.score = d.score
group by h.hacker_id,h.name
having count(s.submission_id) > 1
order by count(s.submission_id) desc, h.hacker_id asc