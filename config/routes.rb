Rails.application.routes.draw do

  root 'chatroom#index'

  post 'message', to: 'messages#create'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  mount ActionCable.server, at: '/cable'

end
