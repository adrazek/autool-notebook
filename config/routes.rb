AutoolNotebook::Engine.routes.draw do
  resources :notebooks
  
  root 'notebooks#index'
end
