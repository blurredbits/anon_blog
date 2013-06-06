get '/post/new' do
  @post = Post.new
  erb :post_form
end

post '/post' do
  puts params
  post = Post.create(params[:post])
  redirect to("/")
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post_form
end

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_form
end

post '/post/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  redirect to ("/post/#{@post.id}")
end

delete '/post/:id' do
  Post.find(params[:id]).destroy
  redirect to ('/')
end




