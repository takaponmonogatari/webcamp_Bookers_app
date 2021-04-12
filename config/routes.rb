Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "homes#top"
resources :books
post "books" => "books#create"
get "books/:id" => "books#show", as: "booklists"
get "books/:id/edit" => "books#edit", as: "edit_booklists"
patch "books/:id" => "books#update", as: "update_booklists"
delete "books/:id" => "books#destroy", as: "destroy_booklists"



end
