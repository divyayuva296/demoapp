class LikesController < ApplicationController
	before_action :find_post
	# before_action :find_like , only: [:destroy]
	def create
		if already_liked?
			flash[:notice] = "you can't like more than once"
		else
			
			@like = @post.likes.create(:user_id => current_user.id)
		end
		redirect_to post_path(@post)
		
	end

	def destroy
		if !(already_liked?)
			flash[:notice] = "cannot unlike"
		else
			# @post = current_user.posts.find(params[:post_id])
			id = @post.likes.ids
			Like.destroy(id)
			
		end
		redirect_to post_path(@post)
		
	end

	private
	def already_liked?

  		Like.where(user_id: current_user.id, post_id:
 		params[:post_id]).exists?
 	
	end

	def find_post
		@post = Post.find(params[:post_id])
	end

	

	



	
end
