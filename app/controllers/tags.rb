get '/tags' do
	@tags = Tag.all
	erb :tag
end