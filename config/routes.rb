Rails.application.routes.draw do
  # GraphqQl
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  # end
  
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # REST 
  namespace :api do
    namespace :v1 do
      resources :friends
    end
  end
  
end
