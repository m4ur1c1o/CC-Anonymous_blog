get '/posts' do
	@posts = Post.all
	erb :post
end