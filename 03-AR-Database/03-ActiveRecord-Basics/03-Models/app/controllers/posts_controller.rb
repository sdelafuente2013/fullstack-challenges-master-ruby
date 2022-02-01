require_relative "../views/posts_view"
# require_relative "../models/post"
# require 'active_record'
# require 'sqlite3'

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    @view.display_post(Post.all)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    @view.answers_user
    Post.create(title: @view.title, url: @view.url, votes: @view.votes)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    @view.answers_user_update
    user_update = Post.find_by(title: @view.name_find)
    user_update.update(title: @view.name_update)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    user_destroy = @view.answers_user_destroy
    if user_destroy.is_a?(String)
      Post.find_by(title: user_destroy).destroy
    else
      Post.find_by(id: user_destroy).destroy
    end
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    user_upvote = @view.answers_user_upvote
    user = Post.find_by(title: user_upvote)
    user.update(votes: user.votes + 1)
  end
end
