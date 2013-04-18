Titletool::Application.routes.draw do

  root :to => 'home#index'
  resource :search, :only => :show
end
