get '/post/new' do
  @post = Post.new
  erb :post_form
end

post '/post' do
  puts params
  post = Post.create(params[:post])
  redirect to("/")
end

get '/post/:id/' do
  @post = Post.get(params[:id])
  erb :post_form
end

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :post_form
end

put '/post/:id' do
  @post = Post.get(params[:id])
  @post.update(params)
  redirect to ("/post/#{@post.id}")
end

delete '/post/:id' do
  Post.find(params[:id]).destroy
  redirect to ('/')
end




