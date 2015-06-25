get '/posts' do
	@posts = Post.all
	erb :post
end

get '/posts/:id' do
	id = params[:id]
	@post = Post.find("#{id}")
	erb :show_post
end