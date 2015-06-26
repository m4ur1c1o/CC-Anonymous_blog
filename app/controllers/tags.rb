get '/tags' do
	@tags = Tag.all
	erb :tag
end

get	'/tags/:id' do
	id = params[:id]
	@tag = Tag.find(id)
	@posts = @tag.posts
	erb :show_tag
end