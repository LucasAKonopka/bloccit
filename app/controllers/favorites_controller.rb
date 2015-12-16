class FavoritesController < ApplicationController
  before_action :require_sign_in
  
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    
    if favorite.save
      flash[:notice] = "post favorited."
    else
      flash[:error] = "favoriting failed."
    end
    
    redirect_to [post.topic, post]
  end
  
  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])
    
    if favorite.destroy
      flash[:notice] = "Post unfavorited."
    else
      flash[:error] = "unfavoriting failed"
    end
    
    redirect_to [post.topic, post]
  end
end