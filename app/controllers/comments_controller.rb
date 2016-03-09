class CommentsController < ApplicationController
  respond_to :json, :html

  def new
    @comment = Comment.new
  end

  def create
    movie = Movie.find(params[:movie_id])
    comment = movie.comments.new(comment_params)
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
      params.require(:comment).permit(:content, :movie_id)
    end
end



