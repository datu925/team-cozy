module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def user_rating(ratable)
    rating = ratable.ratings.find_by(user_id: session[:user_id])
  end

  def user_rated?(ratable)
    !user_rating(ratable).nil?
  end

end
