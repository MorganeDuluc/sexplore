Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  authenticated :user do
    resources :themes, only: :index do
      resources :quizzes, only: :index do
        resources :user_quizzes, only: [:new, :create]
      end
    end
    resources :quizzes, only: :show do
      get '/quiz_end', on: :member, to: 'quizzes#quiz_end'
    end
    resources :questions, only: :show do
      get '/explication', on: :member, to: 'questions#explication'
      resources :responses, only: :create
    end
    resources :responses, only: :show
    resources :user_quizzes, only: :show
    resources :channels, only: [:index, :show]
    resources :videos, only: :index
  end

  # our statics pages
  # get '/explainer', to: 'pages#explainer'
# end
  get '/explainer_one', to: 'pages#explainer_one'
  get '/explainer_two', to: 'pages#explainer_two'
  get '/app', to: 'pages#app'
end
