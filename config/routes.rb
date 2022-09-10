Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about"

  # Users
  devise_for :users, controllers: {
    confirmations:      'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    passwords:          'users/passwords',
    registrations:      'users/registrations',
    sessions:           'users/sessions',
    unlocks:            'users/unlocks'
  }

  get "user_profile", to: "users/profiles#show", as: :user_profile
  get "users", to: "users#index", as: :user_index
  
  #Companies
  devise_for :companies, controllers: {
    confirmations:      'companies/confirmations',
    passwords:          'companies/passwords',
    registrations:      'companies/registrations',
    sessions:           'companies/sessions',
    unlocks:            'companies/unlocks'
  }   

  get "company_profile", to: "companies/profiles#show", as: :company_profile

  # Experiences and Courses
  resources :experiences
  resources :courses

  # Jobs
  get "companies/:company_id/jobs/new", to: "jobs#new", as: :new_job
  post "companies/:company_id/jobs", to: "jobs#create", as: :company_jobs
  get "companies/:company_id/jobs", to: "jobs#index", as: :jobs_index
  get "companies/:company_id/jobs/:job_id/edit", to: "jobs#edit", as: :edit_job
  put "companies/:company_id/jobs/:job_id", to: "jobs#update", as: :update_job
  delete "companies/:company_id/jobs/:job_id", to: "jobs#destroy", as: :delete_job
  get "jobs", to: "jobs#user_index", as: :jobs_user_index
  post "jobs/:job_id", to: "jobs#like", as: :like_job

  get "companies/:company_id/jobs/:job_id/candidates", to: 'jobs#candidates', :as => :job_candidates
  get "companies/:company_id/jobs/:job_id/candidate/:user_id", to: 'jobs#candidate', :as => :job_candidate
end
