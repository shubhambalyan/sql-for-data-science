-- SQL joins on tables 'album' and 'track'

-- 1. Find the title and artist who recorded the song 'Alison'.

SELECT title, artist FROM album, track
  WHERE album.asin=track.album AND song = 'Alison'

-- 2. Which artist recorded the song 'Exodus'.

SELECT artist FROM album, track
  WHERE album.asin=track.album AND song = 'Exodus'

-- 3. Show the song for each track on the album 'Blur'.

SELECT song FROM album, track
  WHERE album.asin=track.album AND title = 'Blur'

-- 4. For each album show the title and the total number of track.

SELECT title, COUNT(*) FROM album, track 
  WHERE asin = album
  GROUP BY title

-- 5. For each album show the title and the total number of tracks containing the word 'Heart'.

SELECT title, COUNT(*) FROM album, track 
  WHERE asin = album AND song LIKE '%Heart%'
  GROUP BY title

-- 6. Find the title tracks.

SELECT song FROM album, track 
  WHERE asin = album AND song = title

-- 7. Show the eponymous albums (title is same as artist). 

SELECT title FROM album
  WHERE artist = title

-- 8. Find the songs that appear on more than 2 albums.

SELECT song, count(DISTINCT title) FROM album, track 
  WHERE asin = album
  GROUP BY song
    HAVING count(DISTINCT title) > 2

-- 9. Find the good value album - show the title, the price and the number of tracks.

SELECT title, price, count(song) FROM album, track 
  WHERE asin = album
  GROUP BY title
    HAVING price/count(*) < 0.5

-- 10. List albums so that the album with the most tracks is first. Show the title and the number of tracks.

SELECT title, COUNT(asin) FROM album, track
  WHERE album.asin = track.album
  GROUP BY title
  ORDER BY COUNT(*) DESC;

-- Credits:  sqlzoo.net