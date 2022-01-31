require_relative "app/models/post"
require "sqlite3"

db_file_path = File.join(File.dirname(__FILE__), "spec/support/posts_spec.db")
DB = SQLite3::Database.new(db_file_path)

DB.execute('DROP TABLE IF EXISTS `posts`;')
create_statement = "
    CREATE TABLE `posts` (
      `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
      `title` TEXT,
      `url` TEXT,
      `votes`  INTEGER
    );"
DB.execute(create_statement)

# Write your test code here (and run `ruby test.rb` in your terminal to run it):

post_uno = Post.new(title: "Awesome article")

# DB.execute("INSERT INTO posts (id, title, url, votes)
# VALUES (5, 'Awesome article', 'www.google.com.ar', 5554 )")

post_uno.save
