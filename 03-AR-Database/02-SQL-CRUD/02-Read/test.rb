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
DB.execute("INSERT INTO `posts` (title, url, votes) VALUES ('Le Wagon', 'www.lewagon.com', '9000')")
DB.execute("INSERT INTO `posts` (title, url, votes) VALUES ('GitHub', 'www.github.com', '1600')")
DB.execute("INSERT INTO `posts` (title, url, votes) VALUES ('Slack', 'www.slack.com', '4000')")
DB.execute("INSERT INTO `posts` (title, url, votes) VALUES ('Mozilla', 'www.mozilla.org', '3000')")
DB.execute("INSERT INTO `posts` (title, url, votes) VALUES ('Stackoverflow', 'www.stackoverflow.com', '4300')")

# Write your test code here (and run `ruby test.rb` in your terminal to run it):
# p DB.execute("SELECT id FROM posts;").first.first.class
# DB.results_as_hash = true

# p !DB.execute("SELECT * FROM posts WHERE id == 1").first.nil?

Post.find(1)
Post.new(id: 5)
p Post
