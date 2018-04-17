Rails.application.routes.draw do
  get 'test/nanika'

  get 'post/index'

  devise_for :users
  get 'home/index'
  get 'mahjong_course/index'
  root 'home#index'
  get 'mahjong_course/1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
