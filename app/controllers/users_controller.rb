class UsersController < ApplicationController

  def index
    @users = User.order :company_name
  end

  def new
    @user = User.new
    @states = State.joins(:cities).uniq.order :name
    @cities = {}
    @districts = {}
    @state_acronym = ""
    @city_name = ""
    @district_name = ""
    @disabled = true
  end

  def create
    @state_acronym = params[:user].delete :state_id
    @city_name = params[:user].delete :city_id
    @district_name = params[:user].delete :district_id

    @user = User.new(params[:user])

    if !@state_acronym.empty?
      @user.state = State.find_by_acronym(@state_acronym)
    end

    if @city_name && !@city_name.empty?
      @user.city = City.find_by_name(@city_name)
    end

    if @district_name && !@district_name.empty?
      @user.district = District.find_by_name(@district_name)
    end

    @user.active = true;
    if @user.save
      redirect_to action: "index"
    else
      @states = State.joins(:cities).uniq.order :name
      @cities = @user.state.cities.order :name
      @districts = @user.city.districts.order :name
      @disabled = false
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: "index"
  end

  def get_cities_by_state
    @cities = State.find_by_acronym(params[:state_id]).cities
  end

  def get_districts_by_city
    @districts = City.find_by_name(params[:city_id]).districts
  end
end
