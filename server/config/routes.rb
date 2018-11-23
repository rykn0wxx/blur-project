# == Route Map
#
#     Prefix Verb   URI Pattern           Controller#Action
# user_token POST   /user_token(.:format) user_token#create {:format=>"json"}
#      users GET    /users(.:format)      users#index {:format=>"json"}
#            POST   /users(.:format)      users#create {:format=>"json"}
#       user GET    /users/:id(.:format)  users#show {:format=>"json", :id=>/.*/}
#            PATCH  /users/:id(.:format)  users#update {:format=>"json", :id=>/.*/}
#            PUT    /users/:id(.:format)  users#update {:format=>"json", :id=>/.*/}
#            DELETE /users/:id(.:format)  users#destroy {:format=>"json", :id=>/.*/}

Rails.application.routes.draw do
  post 'user_token' => 'user_token#create', :defaults => { :format => 'json' }
  resources :users, :defaults => { :format => 'json' }, :constraints => { :id => /.*/ }
end
