class CitiesController < ApplicationController

  def index
    @cities = City.order :name
  end

  def new
    @city = City.new()
    @states = State.order :name
  end

  def create
    state_id = params[:city].delete :state_id
    @city = City.new(params[:city])

    if !state_id.empty?
      @city.state = State.find(state_id)
    end

    if @city.save
      redirect_to action: "index"
    else
      @states = State.order :name
      render "new"
    end

  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to action: "index"
  end

end
