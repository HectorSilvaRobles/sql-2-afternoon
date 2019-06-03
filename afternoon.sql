-- 1. Get all invoices where the `unit_price` on the `invoice_line` is greater than $0.99.
select * from invoice
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
where invoice_line.unit_price > 0.99


-- 2. Get the `invoice_date`, customer `first_name` and `last_name`, and `total` from all invoices.
select invoice_date, customer.first_name, customer.last_name, total from invoice
join customer on invoice.customer_id = customer.customer_id


-- 3. Get the customer `first_name` and `last_name` and the support rep's `first_name` and `last_name` from all customers.
select customer.first_name, customer.last_name, employee.first_name, employee.last_name from customer
join employee on customer.support_rep_id = employee.employee_id


-- 4. Get the album `title` and the artist `name` from all albums.
select album.title, artist.name 
from album
join artist on artist.artist_id = album.artist_id


-- 5. Get all playlist_track track_ids where the playlist `name` is Music.
select playlist_track.playlist_track_id, playlist_track.track_id from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';


-- 6. Get all track `name`s for `playlist_id` 
select track.name
from track
join playlist_list on playlist_list.track_id = track.track_id
where playlist_list.playlist_id = 5


-- 7. Get all track `name`s and the playlist `name` that they're on (2 joins)
select track.name, playlist.name
from track
join playlist_track on playlist_track.track_id = track.track_id
join playlist on playlist_track.playlist_id = playlist.playlist_id;


-- 8. Get all track `name`s and album `title`s that are the genre `Alternative & Punk` ( 2 joins )
select track.name, album.title
from track
join album on album.album_id = track.album_id
join genre on genre.genre_id = track.genre_id
where genre.name = 'Alternative & Punk'