# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

class Post
  attr_reader :votes, :id
  attr_accessor :title, :url

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    DB.results_as_hash = true
    post = DB.execute("SELECT * FROM posts WHERE id == ?", id).first
    Post.new(id: post["id"], title: post["title"], url: post["url"], votes: post["votes"]) unless post.nil?
  end

  def self.all
    DB.results_as_hash = true
    DB.execute("SELECT * FROM posts").map do |post|
      Post.new(id: post["id"], title: post["title"], url: post["url"], votes: post["votes"])
    end
  end
end
