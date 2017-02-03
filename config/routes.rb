Rails.application.routes.draw do

  # get 'books/index'

  # get 'books/show'

  # get 'books/new'

  # get 'books/edit'

  # get 'books/delete'

 #  get 'publishers/index'

 #  get 'publishers/show'

 #  get 'publishers/new'

 #  get 'publishers/edit'

 #  get 'publishers/delete'

	# get 'authors/index'
	# get 'authors/show'
	# get 'authors/new'
	# get 'authors/edit'
	# get 'authors/delete'

	# root 'demo#index'

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

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
