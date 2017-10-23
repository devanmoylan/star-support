class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :dashboard]
  before_action :check_user_rights, only: [:dashboard]

  def index
    @users = User.all
  end

  def show
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def dashboard
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                         .find(session[:conversations])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def check_user_rights
    redirect_to root_path if current_user != set_user
  end
end
