Rails.application.routes.draw do
  resources :surveys

  root :to => "visitors#index"
end
