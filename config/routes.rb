# frozen_string_literal: true

Rails.application.routes.draw do
  root 'plays#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plays do
    resources :reviews, except: [:show, :index]
  end
end
