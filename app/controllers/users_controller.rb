class UsersController < ApplicationController
    before_action :set_current_user, only: %i[show index destroy]


    def index
      @users = User.all
      @user = User.find(params[:id])
      @opinion = Opinion.new
      @posts = @user.opinions.ordered_by_most_recent
    end

    def show
      @users = User.all
      @user = User.find(params[:id])
      @opinion = Opinion.new
      @opinions = @user.opinions.ordered_by_most_recent
    end

    private

    def set_current_user
      @current_user = User.find(current_user.id)
    end
end