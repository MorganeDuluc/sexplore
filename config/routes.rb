Rails.application.routes.draw do
  devise_for :users
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
  # get '/explainer', to: 'pages#explainer'
end
