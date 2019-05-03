class ReplyCommentsController < ApplicationController
	respond_to :json, :js, :html

	def create
		@reply = Reply.find(params[:id])
		@reply_comments = @reply.reply_comments.create(text: params[:comment])
	end

	def load_more
		@comments = if params[:type] == "Replies"
			comment = Comment.find(params[:id])
			comment.replies
		elsif params[:type] == "Reply Comment"
			reply = Reply.find(params[:id])
			reply.reply_comments
		end
	end
end