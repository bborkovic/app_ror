class PublishersController < ApplicationController

	# layout 'admin'
   before_action :confirm_logged_in, :except => [:index]
   before_action :get_logged_username
   before_action :set_page_title!

	def index
		# 
		@publishers = Publisher.all
	end

	def show
		# 
		@publisher = Publisher.find(params[:id])
	end

	def new
		# 
		@publisher = Publisher.new
	end

	def create
		@publisher = Publisher.new(publisher_params)

		if(@publisher.save)
			# puts "***** create #{@publisher.inspect}"
			puts "****"
			flash[:notice] = "Publisher #{@publisher.name} has been created"
			redirect_to publishers_path
		else
			# error is raised
		end
	end

	def edit
		# 
		@publisher = Publisher.find(params[:id])
	end

	def update
		@publisher = Publisher.find(params[:id])
		@publisher.update_attributes(publisher_params)
		if ( @publisher.save)
			flash[:notice] = "Publisher #{@publisher.name} has been updated"
			redirect_to publishers_path # this is /publishers
		else
			render('edit')
		end
	end

	def delete
		# 
		@publisher = Publisher.find(params[:id])
	end

	def destroy
		@publisher = Publisher.find(params[:id])
		@publisher.destroy
		redirect_to(publishers_path)
	end

	private
		def publisher_params
         # params.require(:publisher).permit(:name)
		end

      def set_page_title!
         @page_title = "Publishers"
      end

end
