class GossipController < ApplicationController
	def show
		@gossip = Gossip.find(params[:gossip_id])
	end
end
