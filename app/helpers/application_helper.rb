module ApplicationHelper
    def follow_status(user1, user2)
        if Friendship.where(user_id: user1, follower_id: user2).exists?  
            return "Unfollow"
        else
            return "Follow"
        end
    end
end
