Find the Olympics with the highest number of athletes. The Olympics game is a combination of the year and the season, and is found in the 'games' column. Output the Olympics along with the corresponding number of athletes.

select count(distinct id),games from olympics_athletes_events
group by 2
order by 1 desc
limit 1
