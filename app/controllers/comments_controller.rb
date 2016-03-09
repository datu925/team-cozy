class CommentsController < ApplicationController
  respond_to :json, :html

  def new
    @comment = Comment.new
  end

  def create
    if params[:movie_id]
      commentable = Movie.find(params[:movie_id])
    elsif params[:review_id]
      commentable = Review.find(params[:review_id])
    end
    comment = commentable.comments.build(comment_params)
    if session[:user_id].nil?
      flash.now[:notice] = "You cannot make a comment without being logged in."
    else
      comment[:user_id] = session[:user_id]
      if comment.save
        respond_to do |format|
          format.json  { render json: comment, :include => :user}
        end
      else
        render :json => { :errors => comment.errors.full_messages }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :movie_id, :review_id, :commentable_id, :commentable_type)
    end
end



