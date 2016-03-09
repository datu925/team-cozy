class RatingsController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    rating = user.ratings.new(rating_params)
    # send back successful code

    if rating.save
      details = { new_rating: rating.value,
                  avg_rating: rating.ratable.average_rating.round }
      render json: details, status: :ok
    else
      render json: rating.errors.full_messages, status: :not_acceptable
    end
  end

  def update
    rating = Rating.find_by({
        user_id: session[:user_id],
        ratable_id: params[:rating][:ratable_id],
        ratable_type: params[:rating][:ratable_type]
        })
    rating.assign_attributes(value: params[:rating][:value])
    if rating.save
      details = { new_rating: rating.value,
                  avg_rating: rating.ratable.average_rating.round }
      render json: details, status: :ok
    else
      render json: rating.errors.full_messages, status: :not_acceptable
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value, :ratable_id, :ratable_type)
  end
end