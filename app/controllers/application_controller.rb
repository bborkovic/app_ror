class ApplicationController < ActionController::Base
   
   protect_from_forgery with: :exception

   before_action :print_current_url_to_console

   def print_current_url_to_console
      # puts "***** " + request.methods.grep(/url/).join("\n")
      puts "****  " + request.original_fullpath
      # params.each do |p|
      #    puts "****  " + p.to_s
      # end
      # puts params.inspect
   end

   def confirm_logged_in
      unless session[:user_id]
         flash[:notice] = "Please log in."
         redirect_to(access_login_path)
      end
   end

   def get_logged_username
      if session[:user_id]
         @logged_user = AdminUser.find_by_id(session[:user_id]).username
      else
         @logged_user = false
      end
   end
  
end
