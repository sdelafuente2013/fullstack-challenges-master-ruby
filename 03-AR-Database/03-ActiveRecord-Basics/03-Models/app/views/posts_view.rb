class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  attr_reader :title, :url, :votes, :name_find, :name_update, :url_update

  def initialize(attributes = {})
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = 0
    @name_update = ""
    @url_update = ""
    @name_find = ""
  end

  def display_post(obj_active_record)
    obj_active_record.each do |post|
      puts "#{post.id}. #{post.title} - #{post.votes} votes - #{post.url}"
    end
  end

  def answers_user
    puts "Muchas gracias por elegir crear un post, a continuacion le haremos unas pregunas..."
    puts "¿Que titulo le gustaria añadir?"
    @title = gets.chomp
    puts "Indiquenos la URL:"
    @url = gets.chomp
  end

  def answers_user_update
    puts "¿Que titulo le gustaria cambiar?"
    @name_find = gets.chomp
    puts "Escriba el nuevo nombre del titulo:"
    @name_update = gets.chomp
  end

  def answers_user_destroy
    puts "¿Que title o ID desea eliminar?"
    gets.chomp
  end

  def answers_user_upvote
    puts "¿A que titulo le gustaria votar?"
    gets.chomp
  end
end
