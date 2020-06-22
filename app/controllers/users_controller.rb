class UsersController < ApplicationController
  before_action :set_current_user, only: %i[show index destroy]

  def index
    @users = User.all.ordered_by_most_recent
    @opinion = Opinion.new
    @user = current_user
    @all_friendships = Friendship.all.ordered_by_most_recent
  end

  def show
    @users = User.all.ordered_by_most_recent
    @user = User.find(params[:id])
    @opinion = Opinion.new
    @all_friendships = Friendship.all.ordered_by_most_recent
    @opinions = @user.opinions.ordered_by_most_recent
  end

  private

  def set_current_user
    @current_user = User.find(current_user.id)
  end

  def add_profile
    @user
  end

  def require_same_user
    return unless current_user != @user

    flash[:danger] = 'You do not have permission to perform that action.'
    redirect_to root_path
  end
end
