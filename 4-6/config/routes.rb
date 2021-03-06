Rails.application.routes.draw do
  get 'todolists/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'root#top'

  post 'todolists' => 'todolists#create'

  get 'todolists' => 'todolists#index'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  # .../todolists/1 や .../todolists/3 に該当する
end