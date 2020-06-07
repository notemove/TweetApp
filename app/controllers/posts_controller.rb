class PostsController < ApplicationController
  def index
    #  @をつけることでビューファイルで参照可能になる
    # データベースからすべてのデータを取り出す
    @posts = Post.all
    
  end

  # showアクション
  def show
    # localhost:3000/posts/1 を指定すると、
    # {id:1}というハッシュが変数paramsに入っている。
    @id = params[:id]
  end

end
