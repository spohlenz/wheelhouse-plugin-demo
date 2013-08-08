# Admin routes (scoped to /admin)
PluginDemo::Plugin.routes.draw do  
  extend Wheelhouse::RouteExtensions
  
  resources :controls
end

# Front-end routes
Rails.application.routes.draw do
  
end
