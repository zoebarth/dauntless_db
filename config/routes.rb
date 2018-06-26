Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'public/behemoths#index'
  namespace :admin do
    resources :elements, :locations, :behemoths
  end

  namespace :public do
    resources :behemoths
  end
end
