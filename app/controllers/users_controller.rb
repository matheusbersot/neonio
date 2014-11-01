class UsersController < ApplicationController

  def index
    @users = User.where("profile_id != #{Profile::SYSTEM_ADMIN_PROFILE}").order :name
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

    if verify_recaptcha(:model => @user, :message => "Oh! It's error with reCAPTCHA!") && @user.save
      render "admin"
    else
      @states = State.joins(:cities).uniq.order :name
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
    @states = State.joins(:cities).uniq.order :name
    @cities =  State.find(@user.store.state_id).cities
    @districts = City.find(@user.store.city_id).districts
    @state_acronym = @user.store.state.acronym
    @city_name = @user.store.city.name
    @district_name = @user.store.district.name
  end

  def update
    store = params[:user].delete :store_attributes
    @state_acronym = store.delete :state_id
    @city_name = store.delete :city_id
    @district_name = store.delete :district_id

    @user = User.find(params[:id])

    ## Atualizando os campos
=begin
    @user.email = params[:user]["email"]
    @user.store.name = store["name"]
    @user.store.cnpj =  store["cnpj"]
    @user.store.telephone1 = store["telephone1"]
    @user.store.telephone2 = store["telephone2"]
    @user.store.telephone3 = store["telephone3"]
    @user.store.street_address = store["street_address"]
    @user.store.number_address = store["number_address"]
    @user.store.complement = store["complement"]
    @user.store.zip_code = store["zip_code"]
=end

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

    binding.pry
    # Salvando atualizações
    if verify_recaptcha(:model => @user, :message => "Oh! It's error with reCAPTCHA!") &&
        @user.update_attributes({ :email => params[:user]["email"], :store_attributes => store})
      redirect_to users_path
    else
      @states = State.joins(:cities).uniq.order :name
      @cities =  State.find(@user.store.state_id).cities
      @districts = City.find(@user.store.city_id).districts
      @state_acronym = @user.store.state.acronym
      @city_name = @user.store.city.name
      @district_name = @user.store.district.name
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
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
