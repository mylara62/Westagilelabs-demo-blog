class RepliesController < ApplicationController
	respond_to :json, :js, :html

	def create
		@comment = Comment.find(params[:id])
		@replies = @comment.replies.create(text: params[:comment])
	end 
end