Find songs that have ranked in the top position. Output the track name and the number of times it ranked at the top. Sort your records by the number of times the song was in the top position in descending order.

select count(trackname),trackname from spotify_worldwide_daily_song_ranking
where position = 1
group by 2
order by 1 desc
