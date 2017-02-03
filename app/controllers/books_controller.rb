class BooksController < ApplicationController

	# layout false

	def index
		# 
		@books = Book.all
	end

	def show
		# 
		@book = Book.find(params[:id])
	end

	def new
		# 
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		if(@book.save)
			# puts "***** create #{@book.inspect}"
			puts "****"
			flash[:notice] = "Book #{@book.first_name} has been created"
			redirect_to books_path
		else
			# error is raised
		end
	end

	def edit
		# 
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update_attributes(book_params)

		if ( @book.save)
			flash[:notice] = "Book #{@book.first_name} has been updated"
			redirect_to books_path # this is /books
		else
			render('edit')
		end
	end

	def delete
		# 
		@book = Book.find(params[:id])
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to(books_path)
	end

	private
		def book_params
		params.require(:book).permit(:first_name, :last_name)
		end

end
