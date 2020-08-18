class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  
  def create
    
    
    
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
<<<<<<< HEAD
    if post.checked then
=======
    if post.checked 
>>>>>>> 7494bf5... 既読機能のサーバーサイド実装
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end