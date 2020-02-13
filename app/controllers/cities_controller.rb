class CitiesController < ApplicationController
  def index
	  @cities_arr = City.all
  end

  def show
	  @city = City.find(params[:id])
	  puts "=" * 60
	  puts @city
	  puts params
	  puts "=" * 60
  end
end
