Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  authenticated :user do
    resources :themes, only: [:index, :show] do
      resources :quizzes, only: :index do
        resources :user_quizzes, only: [:new, :create]
      end
    end
    resources :quizzes, only: :show
    resources :questions, only: :show
    resources :responses, only: :show
    resources :user_quizzes, only: :show
  end

  # our statics pages
  get '/explainer_one', to: 'pages#explainer_one'
  get '/explainer_two', to: 'pages#explainer_two'
end
