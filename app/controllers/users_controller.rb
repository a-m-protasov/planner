class UsersController < ApplicationController
  before_filter :find_user, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new]
  def index
    @all_users = User.all
  end
  
  def show
    unless @user
      render text: "Page not found", status: 404
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user].permit!)
    if @user.errors.empty?
      redirect_to(users_path)
    else
      render "new"
    end  
  end
  
  def edit
  end  
  
  def update
    @user.update_attributes(params[:user].permit!)
    if @user.errors.empty?
      redirect_to (users_path)
    else
      render "edit"
    end  
  end
  
  def destroy
    @user.destroy
    redirect_to(users_path)  
  end
  
  private
  
  def find_user
    @user = User.find(params[:id])
  end
end
