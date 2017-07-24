\copy concerts(concert_name,concert_date,concert_time,artist, venue,venue_address,cost,created_at,updated_at) FROM 'csv/concerts3.csv' WITH (FORMAT csv, HEADER true)


bin/rails generate scaffold myconcerts profile:references concert:references
