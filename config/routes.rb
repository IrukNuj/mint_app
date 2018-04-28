Rails.application.routes.draw do
  root :to => 'home#top'

  get 'post/index'
  get 'post/new'
  get 'post/new'
  post 'post/create'
#params引いてるから最下層に
  get 'post/:id' => 'post#show'
  get 'post/:id/edit' => 'post#edit'
  post 'post/:id/update' => 'post#update'
  post 'post/:id/destroy' => 'post#destroy'

  post 'image_file/upload'

#ここから
  get 'test/nanika'
  get 'test/new' => 'test#new'
  get 'test/:id' => 'test#show'
#ここまでテスト用(見りゃわかるか((()

  get 'home/index'

  post 'comment/create'
  get 'comment/index'

  devise_for :users

  get 'users/index'
  get 'users/:id' => 'users#show'

  get 'likes/index'
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
