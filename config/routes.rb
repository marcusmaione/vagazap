Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about"

  get "user_profile", to: "users/profiles#show", as: :user_profile
  get "company_profile", to: "companies/profiles#show", as: :company_profile

  devise_for :users, controllers: {
    confirmations:      'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    passwords:          'users/passwords',
    registrations:      'users/registrations',
    sessions:           'users/sessions',
    unlocks:            'users/unlocks'
  }

  devise_for :companies, controllers: {
    confirmations:      'companies/confirmations',
    passwords:          'companies/passwords',
    registrations:      'companies/registrations',
    sessions:           'companies/sessions',
    unlocks:            'companies/unlocks'
  }  
end
