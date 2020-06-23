class UsersController < ApplicationController
  before_action :set_current_user, only: %i[show index destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 3).ordered_by_most_recent
    @opinion = Opinion.new
    @user = current_user
    @all_friendships = Friendship.all.ordered_by_most_recent
  end

  def show
    @users = User.paginate(page: params[:page], per_page: 3).ordered_by_most_recent
    @user = User.find(params[:id])
    @opinion = Opinion.new
    @user_friendships = @user.friendships.ordered_by_most_recent
    @all_friendships = Friendship.all.ordered_by_most_recent
    @user_follower =  @all_friendships.followers(@user)
    @opinions = @user.opinions.ordered_by_most_recent
    @user_followers = @user_follower.paginate(page: params[:page], per_page: 3)
  end

  private

  def set_current_user
    @current_user = User.find(current_user.id)
  end

  def require_same_user
    return unless current_user != @user

    flash[:danger] = 'You do not have permission to perform that action.'
    redirect_to root_path
  end
end
