class RestaurantsController < ApplicationController

  def index
   @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])  
  end 

  def new
    @restaurant = Restaurant.new   
  end 

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.valid? 
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end 

  def edit
    @restaurant = Restaurant.new
  end 

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    if @restaurant.valid?
      @restaurant.save
    redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end 
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy  
    redirect_to restaurants_path 
  end 

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :city, :star_rating, :cuisine)
  end 
end
