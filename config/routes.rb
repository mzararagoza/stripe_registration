StripeRegistration::Application.routes.draw do
 devise_for :users, :controllers => { registrations:  'users/registrations',
                                     :sessions => "users/sessions",
                                     :passwords => 'users/passwords',
                                     :confirmations => 'users/confirmations'
 }
 authenticate :user do
   namespace :users do

     get '/dashboard' => 'dashboards#index', as: :dashboard
     get '/' => 'dashboards#index'
   end
 end
  match "/prices" => "pages#prices", :as => :prices, via: [:get, :post]
  root :to => 'pages#index'
end
