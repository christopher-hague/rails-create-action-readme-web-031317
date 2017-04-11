class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new
		@post.title = params[:title]
		@post.description = params[:description]
		@post.save
		# redirects the user after they've filled out the form, the idea
		# being that a user who submits a post would like to view it upon creation
		redirect_to post_path(@post)
	end
end
