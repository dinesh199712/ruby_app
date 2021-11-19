Rails.application.routes.draw do
  resources :ruby_employee_apps
  root 'ruby_employee_apps#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
