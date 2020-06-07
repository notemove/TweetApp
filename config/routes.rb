Rails.application.routes.draw do
  get 'posts/index'

  # 下記１行はshowよりも上に書く
  get 'posts/new' => "posts#new"

  # 下記１行はindexよりも下に書く
  get 'posts/:id' => 'posts#show'


  get '/' => 'home#top'
  get 'about'=>'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
