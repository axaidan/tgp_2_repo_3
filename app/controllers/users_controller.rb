class UsersController < ApplicationController
  def index
  end

  def create
		puts params[:user]
		user_params = params[:user]
		@user = User.new
		@user.first_name = user_params[:first_name]
		@user.last_name = user_params[:last_name]
		@user.email = user_params[:email]
		@user.password = user_params[:password]
		@user.age = user_params[:age].to_i
		@user.desc = user_params[:desc]
		@user.city = City.all.first
		if @user.save
			login(@user)
			redirect_to gossips_path	
		else
			render :new
		end
		
  end

  def new
		@user = User.new
		# @cities_arr = City.all.map { |each_city| [each_city.name, each_city.id] }
  end

  def edit
  end

  def show
	  @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
