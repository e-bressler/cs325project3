class UsersController < ApplicationController

  def index
    set_all_users
    render 'index'
  end

  def show
    set_user; return if performed?
    render 'show'
  end

  def destroy
    set_user; return if performed?

    if @user.destroy
      flash[:success]= 'Successfully destroyed user.'
    else
      flash[:error]= 'Unsuccessful in destroying user.'
    end

    if current_user.is_admin?
      set_all_users
      render 'index'
    else
      redirect_to root_path
    end
  end

  private

  def set_user
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      set_all_users
      index
    end
  end

  def set_all_users
    @users = User.all
  end

end