class DemoController < ApplicationController
  
	# layout false

	def index
	end

	def hello
      @publisher = Publisher.new
	end

   def displayform
      # params.permit(:name)
      # puts params.join(', ')
   end
	
end
