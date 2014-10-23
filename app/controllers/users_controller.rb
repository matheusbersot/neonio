class UsersController < ApplicationController

  def index
    @users = User.order :name
  end

  def new
    @user = User.new
    @form_type = params[:form_type]
    if @form_type == "#{User::STORE_ADMIN_FORM}"
      new_store_admin()
    end
  end

  def create
    @form_type = params[:form_type]
    if  @form_type == "#{User::STORE_ADMIN_FORM}"
      create_store_admin
    else
      create_seller
    end

    if @user.save
      redirect_to action: "application#admin"
    else
      binding.pry
      @states = State.joins(:cities).uniq.order :name
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

  def new_store_admin
    @user.store = Store.new
    @states = State.joins(:cities).uniq.order :name
    @cities = {}
    @districts = {}
    @state_acronym = ""
    @city_name = ""
    @district_name = ""
  end

  def create_store_admin
    store = params[:user].delete :store_attributes
    @state_acronym = store.delete :state_id
    @city_name = store.delete :city_id
    @district_name = store.delete :district_id

    @user = User.new(params[:user])
    @user.profile = Profile.find(Profile::STORE_ADMIN_PROFILE)

    @user.store = Store.new( store )
    @user.store.user = @user

    @cities = {}
    @districts = {}

    if !@state_acronym.empty?
      @user.store.state = State.find_by_acronym(@state_acronym)
    end

    if @city_name && !@city_name.empty?
      @user.store.city = City.find_by_name(@city_name)
      @cities = @user.store.state.cities.order(:name) if @user.store.state
    end

    if @district_name && !@district_name.empty?
      @user.store.district = District.find_by_name(@district_name)
      @districts = @user.store.city.districts.order(:name) if @user.store.city
    end
  end

  def create_seller
    @user = User.new(params[:user])
    @user.profile = Profile.find(Profile::STORE_SELLER_PROFILE)
  end

end
