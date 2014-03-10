Rails.application.routes.draw do
  resources :notes, :except => [:edit, :new]

  get '/count' => 'application#count'

  get '/secret' => 'application#secret'
end
