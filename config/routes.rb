Rails.application.routes.draw do

	get 'authors/index'
	get 'authors/show'
	get 'authors/new'
	get 'authors/edit'
	get 'authors/delete'

	# root 'demo#index'

	resources :authors do
		member do
			get :delete
		end
	end


	get 'demo/index'

	get 'demo/hello'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
