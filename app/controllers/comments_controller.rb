class CommentsController < ApplicationController

	def create
		@post = current_user.posts.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user_id = current_user.id
		@comment.save
		redirect_to post_path(@post)
		# byebug
	end

	def destroy
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter,:user_id,:post_id)
	end
end
