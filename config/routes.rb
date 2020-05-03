Rails.application.routes.draw do
  get 'registration' =>'static_pages#registration'
  resources :projects do
  	resources :tasks do
  		member do
  			patch :complete
  		end
  	end
  end
  get 'new'=>'projects#index'
  get 'index'=>'users#index'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
