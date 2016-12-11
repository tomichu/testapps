Rails.application.routes.draw do
  devise_for :users
  resources :necessary_study_times
	resources :projects do
		resources :tasks, only: [ :create, :destroy ]
	end

	post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'

	root 'top#index'

  resources :winters
  resources :student_memos
	resources :posts

	namespace :admin do
		resources :users do
			collection do
				post :import
			end
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
