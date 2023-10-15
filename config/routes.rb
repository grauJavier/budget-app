Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, path: 'auth', path_names: {
  sign_in: 'login',
  sign_out: 'logout',
  password: 'secret',
  confirmation: 'verification'
}
end
