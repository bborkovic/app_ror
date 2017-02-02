class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def new
		@varijabla1 = 100
		@varijabla2 = 100
	end

	def edit
	end

	def delete
	end
end
