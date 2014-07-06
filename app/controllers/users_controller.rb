class UsersController < ApplicationController

  def index
    @users = User.order :company_name
  end

  def new
    @user = User.new
    @states = State.joins(:cities).uniq.order :name
    @cities = City.order :name
    @districts = District.order :name
  end

  def create
    @user = User.new(params[:user])
    @user.state_id = 1
    @user.city_id = 1
    @user.district_id = 1
    @user.active = true;
    if @user.save
      redirect_to action: "index"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: "index"
  end
end
