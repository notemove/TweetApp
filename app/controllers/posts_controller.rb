class PostsController < ApplicationController
  def index
    #  @をつけることでビューファイルで参照可能になる
    # データベースからすべてのデータを取り出す
    @posts = Post.all.order(created_at: :desc)
    
  end

  # showアクション
  def show
    # localhost:3000/posts/1 を指定すると、
    # {id:1}というハッシュが変数paramsに入っている。
    # @id = params[:id]
    @post = Post.find_by(id:params[:id])
  end

  # newアクション
  def new
  end

  # createアクション
  def create
    # contentが「入力データ」であるインスタンスを作成
    @post = Post.new(content:params[:content])
    # データベースへセーブ
    @post.save

    # 指定した URL（投稿一覧） に転送
    redirect_to("/posts/index")
  end

  def edit
    # {id: 1}というハッシュが変数 params に入っている
    @post = Post.find_by(id: params[:id])
  end

end
