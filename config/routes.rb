Rails.application.routes.draw do

  root 'chatrooms#index'

  get 'login', to: 'sessions#new'

  get 'adesivos', to: 'pages#index'

end
