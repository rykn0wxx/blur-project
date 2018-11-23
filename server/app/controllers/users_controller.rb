class UsersController < ApplicationController
  before_action :set_user, :only => [:show, :update, :destroy]
  before_action :authenticate_user, :only => [:index, :show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: {
      :uuid => @user.uuid,
      :username => @user.username,
      :email => @user.email,
      :admin => @user.admin
    }, :status => 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find_by_login(params[:login])
    end
    
    def user_params
      params.require(:user).permit(:email, :username, :password, :password_confirmation, :admin, :login)
    end
end
