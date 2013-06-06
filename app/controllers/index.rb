get '/' do
  @posts = Post.all
  # @tags = Post.tags
  erb :index
end


