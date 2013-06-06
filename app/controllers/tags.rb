post '/tag/new' do
  @tag = Tag.create(params)
  Marker.create({tag_id: @tag.id}, params[:post_id])
  redirect to '/'
end
