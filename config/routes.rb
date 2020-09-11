Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "home#index"  
    get 'home/ok'
    get 'home/index'
    get 'home/contact'
    get 'home/about'
end
