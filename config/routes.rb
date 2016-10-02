Rails.application.routes.draw do
devise_for :users, :controllers => {
  :sessions      => "users/sessions",
  :registrations => "users/registrations",
  :passwords     => "users/passwords",
  :omniauth_callbacks => "users/omniauth_callbacks" 
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:new, :create, :show, :index]
root 'chat_rooms#index'
mount ActionCable.server => '/cable'

 resources :photos do
    post :upload, on: :collection
  end
end
