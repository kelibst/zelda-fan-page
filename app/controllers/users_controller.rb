class UsersController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
  

    def show
      @user = User.find(params[:id])
      @posts = @user.opinions.ordered_by_most_recent
    end  
    
    def follow
      followership_exists = Friendship.where(user_id: current_user.id, follower_id: params[:id]).exists?
      
      if followership_exists
          
          follow_obj = Friendship.new(user_id: current_user.id, follower_id: params[:id])
          follow_obj.save 
          respond_to do |format|
              format.html { redirect_to opinions_url, notice: "Following this user #{@user.first_names} #{@user.last_name} was successfully destroyed." }
          end
      end
  end

end