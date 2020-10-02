Rails.application.routes.draw do
	devise_for :users
	root 'projects#index'
	get 'projects', to: 'projects#index'
	get 'users', to: 'users#index'
	resources :projects, only: [:new, :create, :show, :edit, :update, :destroy]
end