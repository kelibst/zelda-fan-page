class UsersController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_names, :last_name, :photo, :cover_image])
    end

    def show
      @user = User.find(params[:id])
      @posts = @user.opinions.ordered_by_most_recent
    end

end