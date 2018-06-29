Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'behemoths#index'

  namespace :admin do
    resources :elements, :locations, :behemoths, :perks, :reagents, :weapons, :armors
    get '/', to: 'behemoths#index'
  end

  resources :behemoths, :armors, :weapons
end


