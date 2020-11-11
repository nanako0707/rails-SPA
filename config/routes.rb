Rails.application.routes.draw do
  root to: "home#index"
  resources :contents
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  scope '/api' do
    get '/contents', to: 'contents#index', defaults: { format: :json }
    get '/contents/:id', to: 'contents#show', defaults: { format: :json }
  end
end
