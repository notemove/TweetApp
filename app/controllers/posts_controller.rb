class PostsController < ApplicationController
  def index
    #  @をつけることでビューファイルで参照可能になる
    @posts = [
      "今日からProgateでRails",
      "投稿一覧ページ作成中"
    ]
  end
end
