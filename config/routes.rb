Rails.application.routes.draw do
  devise_for :users
  get "home/read/:id", to: "home#read", :as => :post_read
  get "home/:tag/posts", to: "home#tag_search", :as => :tag_search
  get "home/posts/:category", to: "home#category_search", :as => :category_search
  resources :posts
  get 'tags/index'
  resources :categories
  resources :tags
  get 'category/index'
  get 'category/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "home#index"
    get 'home/ok'
    get 'home/index'
    get 'home/contact', as: :contact
    get 'home/about',  as: :about   
end
