Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: [:index, :edit, :update, :create, :to_destroy]
  devise_scope :user do
    get    'signup',                to: 'users/registrations#index'
    get    'signup/registration',   to: 'users/registrations#step1'
    get    'signup/sms_confirmation',      to: 'users/confirmations#step2'
    get    'users/sign_out',        to: 'users#to_destroy'
    get    'signup/sms_confirmation/sms',      to: 'users/confirmations#step3'
    get    'signup/adress',               to: 'users/registrations#step4'
    get    'signup/credit',         to: 'users/redistrations#step5'
    get    'signup/registration/create',         to: 'users/registrations#create'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
