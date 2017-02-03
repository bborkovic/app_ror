class AuthorsController < ApplicationController

	layout 'admin'

	def index
		# 
		@authors = Author.all
	end

	def show
		# 
		@author = Author.find(params[:id])
	end

	def new
		# 
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)

		if(@author.save)
			# puts "***** create #{@author.inspect}"
			puts "****"
			flash[:notice] = "Author #{@author.first_name} has been created"
			redirect_to authors_path
		else
			# error is raised
		end
	end

	def edit
		# 
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.find(params[:id])
		@author.update_attributes(author_params)

		if ( @author.save)
			flash[:notice] = "Author #{@author.first_name} has been updated"
			redirect_to authors_path # this is /authors
		else
			render('edit')
		end
	end

	def delete
		# 
		@author = Author.find(params[:id])
	end

	def destroy
		@author = Author.find(params[:id])
		@author.destroy
		redirect_to(authors_path)
	end

	private
		def author_params
			#
			params.require(:author).permit(:first_name, :last_name)
		end

end
