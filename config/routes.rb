Rails.application.routes.draw do
  resources :payments
  resources :customers do
    collection do
      get :search
    end
    resources :dresses
  end
  resources :dresses
  get 'session', to: 'current_user#session'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
