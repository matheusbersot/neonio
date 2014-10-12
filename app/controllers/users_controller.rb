class UsersController < ApplicationController

  def index
    @users = User.order :company_name
  end

  def new
    @user = User.new
    @states = State.joins(:cities).uniq.order :name

    @cities = {} #City.order :name
    @districts = {} #District.order :name
  end

  def create
    binding.pry
    state_id = params[:user].delete :state_id
    city_id = params[:user].delete :city_id
    district_id = params[:user].delete :district_id

    @user = User.new(params[:user])

    if !state_id.empty?
      @user.state = State.find(state_id)
    end

    if !city_id.empty?
      @user.city = City.find(city_id)
    end

    if !district_id.empty?
      @user.district = District.find(district_id)
    end

    @user.active = true;
    if @user.save
      redirect_to action: "index"
    else
      @states = State.joins(:cities).uniq.order :name
      @cities = City.order :name
      @districts = District.order :name
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: "index"
  end

  def get_cities_by_state
    @cities = State.find(params[:state_id]).cities
  end

  def get_districts_by_city
    @districts = City.find(params[:city_id]).districts
  end
end
