class UsersController < ActionController::Base
    
    
  

    def show
      @user = User.find(params[:id])
      @posts = @user.opinions.ordered_by_most_recent
    end  
    
   

end