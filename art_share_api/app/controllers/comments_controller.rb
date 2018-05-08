class CommentsController < ApplicationController
  def index
    if params[:user_id]
      comments = Comment.find_by(user_id: params[:user_id])
      render json: comments
    elsif params[:artwork_id]
      comments = Comment.find_by(artwork_id: params[:artwork_id])
      render json: comments
    else
      render json: "Not found"
    end
  end
end
