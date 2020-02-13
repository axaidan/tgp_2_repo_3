class GossipsController < ApplicationController
	
	def index
		@gossip_arr = Gossip.all
	end

	def create
		@gossip = Gossip.new
		@gossip.title = params[:title]
		@gossip.content = params[:content]
		@gossip.user = User.find_by(first_name: params[:user])
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
end
