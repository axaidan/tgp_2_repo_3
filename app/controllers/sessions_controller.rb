class SessionsController < ApplicationController
	def new 
	end

	def create
		puts "=" * 25 + "CREATE" + "=" * 25
		puts params
		puts "=" * 25 + "CREATE" + "=" * 25
		
		user = User.find_by(email: params[:email])
		
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
		else
			flash.now[:danger] = 'ERROR - email ou mot de passe invalide.'
			render 'new'
		end

		puts "=" * 25 + "CREATE" + "=" * 25
		puts session[:user_id]
		puts "=" * 25 + "CREATE" + "=" * 25
		redirect_to gossips_path
	end

	def destroy
		session.delete(:user_id)
		redirect_to gossips_path
	end
end
