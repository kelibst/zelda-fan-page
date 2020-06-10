module ApplicationHelper
    def following?(user)
        Friendship.where(user_id: current_user.id, follower_id: user.id).exists?
    end 
end
