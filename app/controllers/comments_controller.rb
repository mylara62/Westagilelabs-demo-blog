class CommentsController < ApplicationController
	respond_to :json, :js, :html

	def create
		@article = Article.find(params[:id])
		@comment = @article.comments.create(text: params[:comment])
	end 
end