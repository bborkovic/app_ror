Rails.application.routes.draw do

  root 'demo#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

	resources :authors do
		member do
			get :delete
		end
	end

	resources :publishers do
		member do
			get :delete
		end
	end

	resources :books do
		member do
			get :delete
		end
	end


	get 'demo/index'
	get 'demo/hello'
   post 'demo/displayform'
   # post 'demo/displayform'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
