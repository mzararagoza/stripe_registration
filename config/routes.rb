StripeRegistration::Application.routes.draw do
  match "/prices" => "pages#prices", :as => :prices, via: [:get, :post]
  root :to => 'pages#index'
end
