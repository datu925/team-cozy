class ReviewCommentsController < ApplicationController
  respond_to :json, :html

  def new
    @comment = Comment.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:review_id])
    puts "***************"
    put @review
    comment = review.comments.new(comment_params)

    if session[:user_id].nil?
      flash.now[:notice] = "You cannot make a comment without being logged in."
    else
      comment[:user_id] = session[:user_id]
      comment.save
      respond_to do |format|
        format.json { render json: comment, :include => :user }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :review_id, :movie_id)
    end
end