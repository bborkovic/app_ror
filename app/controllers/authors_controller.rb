class AuthorsController < ApplicationController

	# layout false

	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def new
		@author = Author.new
	end

	def create
	end

	def edit
	end

	def delete
	end
end
