class GossipsController < ApplicationController
	before_action :authenticated, except: [:index, :show]
	
	def index
		# DANS SERVEUR AFFICHAGE SESSIONS A CHAQUE RETOUR INDEX
		puts "=" * 25 + 'INDEX' + "=" * 25
		puts "SESSION == NIL ? #{session[:user_id].nil?}"
		puts "CURRENT USER : #{current_user}"
		puts "=" * 25 + 'INDEX' + "=" * 25
		@gossip_arr = Gossip.all
	end

	def create
		@gossip = Gossip.new
		@gossip.title = params[:title]
		@gossip.content = params[:content]
		@gossip.user = current_user 
		@gossip.city = City.all.first
		@gossip.save		
		redirect_to root_path
	end

	def new
	end

	def edit
		@gossip = Gossip.find(params[:id])
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.find(params[:id])
		gossip_params = params.require(:gossip).permit(:title, :content)
		@gossip.update(gossip_params)
		redirect_to(gossip_path(params[:id]))
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		redirect_to gossips_path
	end

	private

	def authenticated
		unless current_user
			redirect_to new_session_path
		end
	end
end
