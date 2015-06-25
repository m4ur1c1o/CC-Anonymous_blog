post_1 = Post.create(title: "First post", description: "This is my first post for this blog.")
post_2 = Post.create(title: "Second post", description: "This is my second post for this blog.")
post_3 = Post.create(title: "Third post", description: "This is my third post for this blog.")

post_1.tags.create(name: "Technology")
post_1.tags.create(name: "Programming")
post_2.tags.create(name: "Sport")
post_3.tags.create(name: "Photography")