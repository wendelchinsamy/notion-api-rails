# frozen_string_literal: true

Rails.application.routes.draw do
  root "health_check#index"

  resources :health_check, only: [:index]
end
