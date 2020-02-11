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
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def update
	end

	def destroy
	end
end
