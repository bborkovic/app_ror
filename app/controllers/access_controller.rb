class AccessController < ApplicationController

   before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
   before_action :get_logged_username

   def menu
   # display text and links
   #
   end

   def login
   #
   # diplay form
   end

   def attempt_login
      if params[:username].present? && params[:password].present?
         found_user = AdminUser.where(:username => params[:username]).first
         if found_user
            authorized_user = found_user.authenticate(params[:password])
         end
      end
      
      if authorized_user
         session[:user_id] = authorized_user.id
         flash[:notice] = "You are logged in."
         redirect_to(admin_path)
      else
         flash.now[:error] = "Invalid username/password combination"
         render('login')
      end
   end

   def logout
      session[:user_id] = nil
      flash[:notice] = "You are logged out."
      redirect_to(access_login_path)
   end

   private

end
