require 'sqlite3'

def all_artists(db)
  query = <<-SQL
  SELECT * FROM artists;
  SQL
  db.execute(query)
end
