Rails.application.routes.draw do
  resources :notes, :except => [:edit, :new] do
    post '/delayer', action: 'delayer', on: :collection
  end

  get '/count' => 'application#count'

  get '/secret' => 'application#secret'
end
