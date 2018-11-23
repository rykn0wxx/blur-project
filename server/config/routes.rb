Rails.application.routes.draw do
  post 'user_token' => 'user_token#create', :defaults => { :format => 'json' }
  resources :users, :defaults => { :format => 'json' }, :constraints => { :id => /.*/ }
end
