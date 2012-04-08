Geeki::Application.routes.draw do
  root :to => 'index#index'
  resources :pages, :only => [:show]
end
