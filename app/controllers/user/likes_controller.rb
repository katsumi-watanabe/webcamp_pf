class User::LikesController < ApplicationController

  def create
    @post_sneaker = PostSneaker.find(params[:post_sneaker_id])
    like = current_user.likes.new(post_sneaker_id: @post_sneaker.id)
    like.save
  end

  def destroy
    @post_sneaker = PostSneaker.find(params[:post_sneaker_id])
    like = current_user.likes.find_by(post_sneaker_id: @post_sneaker.id)
    #byebug
    like.destroy
  end

end
