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

  def update
    # URLのidから投稿データを取得する
    @post = Post.find_by(id: params[:id])
    #取得した投稿データのcontentの値を上書きする
    @post.content = params[:content]
    #上書きした投稿データを保存する
    if @post.save
      # 成功
      redirect_to("/posts/index")
    else
      # 失敗
      # editアクションを経由せずに posts/edit.html.erbが表示されるようにすると
      # 入力した文字が再表示される。
      render("/posts/edit")
      # editアクションを経由すると入力文字がもとの状態に戻ってしまう。
      # redirect_to("/posts/#{@post.id}/edit")
    end
    

    # 投稿一覧ページにリダイレクトさせるのでビューは不要
    # redirect_to("/posts/index")
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

end
