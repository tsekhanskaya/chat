# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :messages, only: :create

  resources :rooms, only: %i[show create], param: :title

  root to: 'rooms#index'
end
