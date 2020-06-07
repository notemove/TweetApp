class PostsController < ApplicationController
  def index
    #  @をつけることでビューファイルで参照可能になる
    # データベースからすべてのデータを取り出す
    @posts = Post.all
    
  end
end
