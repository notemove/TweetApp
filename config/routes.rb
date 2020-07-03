Rails.application.routes.draw do

  get 'users/index' => "users#index"

  get 'users/:id' => "users#show"
  # 注釈
  # get : データベースを変更しないアクション
  # post : データベースを変更するアクション


  get 'posts/index' => "posts#index"

  # 下記１行はshowよりも上に書く
  get 'posts/new' => "posts#new"

  # 編集したい投稿のidをURLに含ませる
  # 例：localhost:3000/posts/1/edit
  get "posts/:id/edit" => "posts#edit"

  # 入力フォームの値を受け取るときは post を使う
  # PostモデルのPostとは無関係
  post 'posts/create' => "posts#create"

  # 下記１行はindexよりも下に書く
  get 'posts/:id' => 'posts#show'


  post 'posts/:id/update' => "posts#update"

  post 'posts/:id/destroy' => "posts#destroy"

  get '/' => 'home#top'
  get 'about'=>'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
