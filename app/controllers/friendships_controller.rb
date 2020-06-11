class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def follow
    follow_obj = Friendship.new(user_id: current_user.id, follower_id: params[:id])
    follow_obj.save
    @user = current_user
    respond_to do |format|
      format.html do
        redirect_to opinions_url,
                    notice: "Following this user #{@user.first_names} #{@user.last_name} was successful."
      end
    end
  end

  def unfollow
    @followership = Friendship.where(user_id: current_user.id, follower_id: params[:id])
    Friendship.destroy(@followership.ids)
    @user = User.find(params[:id])
    respond_to do |format|
      format.html do
        redirect_to opinions_url,
                    notice: "Unfollowing this user #{@user.first_names} #{@user.last_name} was successfully destroyed."
      end
    end
  end

  private

  def follower_params
    Friendship.where(user_id: current_user.id, follower_id: params[:id].select('id'))
  end
end
