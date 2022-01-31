class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def destroy
    # TODO: destroy the current instance from the database
    DB.results_as_hash = true
    post = DB.execute("DELETE FROM posts WHERE id = ?", id).first
  end
end
