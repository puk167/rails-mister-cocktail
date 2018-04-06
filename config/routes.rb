Rails.application.routes.draw do
  
  root to: 'index'

  resources :cocktails, only: [:index, :show, :new, :create] do

    resources :doses, only: [:new, :create] do
    end
  end # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :doses, only: :destroy
end
