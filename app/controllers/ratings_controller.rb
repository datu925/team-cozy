class RatingsController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    rating = user.ratings.new(rating_params)
    # send back successful code
    if rating.save
      render json: rating.ratable.average_rating, status: :ok
    else
      render json: rating.errors.full_messages, status: :not_acceptable
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value, :ratable_id, :ratable_type)
  end
end