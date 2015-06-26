get '/posts' do
	@posts = Post.all
	erb :post
end

get '/posts/new' do
	erb :new_post
end

post '/posts' do
	title = params[:title]
	description = params[:description]
	@post = Post.create(title: title, description: description)
	redirect to("/posts/#{@post.id}")
end

get '/posts/:id' do
	id = params[:id]
	@post = Post.find("#{id}")
	erb :show_post
end

get '/posts/:id/edit' do
	id = params[:id]
	@post = Post.find("#{id}")
	erb :edit_post
end

post '/posts/:id' do
	title = params[:title]
	description = params[:description]
	id = params[:id]
	post = Post.find(id)
	post.update(title: title, description: description)
	redirect to("/posts/#{id}")
end

post '/posts/:id/delete' do
	id = params[:id]
	post = Post.destroy(id)
	redirect to ('/posts')
end