class PostsController < ApplicationController
before_action :authenticate_user!
	def index
		@posts = Post.all
		if params[:search]
			@posts = Post.search(params[:search])
		else
			@posts = Post.all
		end
		# @search = params[:search]
		# if @search 
		# 	@sposts = Post.where('search LIKE ?' "%#{params[:search]}%")
		# 	byebug
		# else
		# 	@sposts = Post.all 
		# end
		# @results = Comment.find_by(commenter: @search)
		# byebug
		# @sposts = Comment.find_by(commenter: @search)
		# byebug
	
		# @s = Post.search(params[:search])
	end

	def new
		@user = current_user
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = current_user.posts.find(params[:id])
	end

	def create
	
		@user = current_user
		@post = @user.posts.create(post_params)
		if @post.save
			redirect_to posts_path
		
		end
	end

	def update
		@post = current_user.posts.find(params[:id])
		# byebug
		if @post.update(post_params)
			redirect_to posts_path
		else
			render 'edit'
		end
	end

	def destroy
		@post = current_user.posts.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
	
	def search
		 if 
		 	@parameter = params[:search]
    		@results = Posts.all.where("lower(title) LIKE :search", search: @parameter)  
  		else  
  			params[:search].blank?  
    		redirect_to posts_path, alert: "Empty field!" and return  
    		
  		end  
	end




	private

	def post_params
    	params.require(:post).permit(:title, :user_id,:search,:content)
  end

  	
end
