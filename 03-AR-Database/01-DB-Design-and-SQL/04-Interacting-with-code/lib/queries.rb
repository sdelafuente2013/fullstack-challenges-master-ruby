require 'sqlite3'

def artist_count(db)
  db.execute("SELECT COUNT(*) FROM artists;")[0][0].to_i
  # TODO: use `db` to execute an SQL query against the database.
end

def number_of_rows(db, table_name)
  query = <<-SQL
    SELECT COUNT(*) FROM #{table_name};
  SQL
  db.execute(query)[0][0].to_i
  # TODO: count number of rows in table table_name
end

def sorted_artists(db)
  query = <<-SQL
    SELECT name FROM artists
    ORDER BY name ASC;
  SQL
  results = []
  db.execute(query).each do |row|
    results << row.join(', ')
  end
  results
  # TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  query = <<-SQL
    SELECT name FROM tracks
    WHERE name LIKE '%love%';
  SQL
  results = []
  db.execute(query).each do |row|
    results << row.join(', ')
  end
  results
  # TODO: return array of love songs' names
end

def long_tracks(db, min_length)
  query = <<-SQL
    SELECT name FROM tracks
    WHERE milliseconds > #{min_length * 60_000}
    ORDER BY milliseconds;
  SQL
  results = []
  db.execute(query).each do |row|
    results << row[0]
  end
  results
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
end
