Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/fortune_url" => "pages#fortune_method" 
get "/lucky_numbers_url" => "pages#lucky_method" 
get "/count_url" => "pages#count" 
get "/beer_url" => "pages#beer_method"
get "/meal_reccomendation_url" => "pages#meal_method"
end
