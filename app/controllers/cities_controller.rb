class CitiesController < ApplicationController

  def index
    @cities = City.order :name
  end

  def new
    @city = City.new()
    @states = State.order :name
  end

  def create
    @city = City.new(params[:city])
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
