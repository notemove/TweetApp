Rails.application.routes.draw do
  get 'posts/index'

  # 下記１行はshowよりも上に書く
  get 'posts/new' => "posts#new"

  # 入力フォームの値を受け取るときは post を使う
  # PostモデルのPostとは無関係
  post 'posts/create' => "posts#create"

  # 下記１行はindexよりも下に書く
  get 'posts/:id' => 'posts#show'


  get '/' => 'home#top'
  get 'about'=>'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
