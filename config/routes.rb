Rails.application.routes.draw do
  resources :flats do
    resources :reviews, only: [:new, :create]
  end
end

