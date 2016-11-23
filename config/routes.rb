Rails.application.routes.draw do
  resources :pexams do
		collection { post :import }
	end
  resources :grammer_lv1s
	resources :projects do
		resources :tasks, only: [ :create, :destroy ]
	end

	post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'

	root 'top#index'
  resources :winters
  resources :student_memos

	namespace :admin do
		resources :users do
			collection do
				post :import
			end
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
