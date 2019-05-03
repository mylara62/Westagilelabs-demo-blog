class ArticlesController < ApplicationController
	before_action :set_article, only: %w(show update edit destroy)

	def index 
		@articles = current_user.articles
	end

	def create
		current_user.articles.create(article_params)
		redirect_to articles_path
	end

	def update
		@article.update(article_params)
		redirect_to articles_path
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end

	private
		def set_article
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:title)
		end
end