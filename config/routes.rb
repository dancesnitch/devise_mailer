Rails.application.routes.draw do

  
  	devise_for :users, :controllers => { registrations: 'registrations' }
  	resources :articles
	root 'pages#index'

	get 'pages/contact'

	get 'pages/about'
end
