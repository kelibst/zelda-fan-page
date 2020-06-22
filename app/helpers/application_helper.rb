module ApplicationHelper
  def following?(user)
    @all_friendships.where(user_id: current_user.id, follower_id: user.id).exists?
  end
end
