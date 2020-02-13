class CommentsController < ApplicationController
	def new
		current_gossip = Gossip.find(params[:gossip_id])
		@comment = Comment.new(gossip: current_gossip)
	end

	def create
		comment_params = params[:comment]
		@comment = Comment.new
		@comment.user = User.find_by(first_name: comment_params[:user])
		@comment.content = comment_params[:content]
		@comment.gossip = Gossip.find(params[:gossip_id])
		@comment.save
		redirect_to gossip_path(@comment.gossip.id)
	end

	def edit
		puts '\n' + '=' * 25 + 'EDIT' + '=' * 25
		puts params
		puts '=' * 25 + 'EDIT' + '=' * 25 + '\n'
		current_gossip = Gossip.find(params[:gossip_id])
		@comment = Comment.find(params[:id]) 
	end

	def update
		puts "\n" + '=' * 25 + 'UPDATE' + '=' * 25
		puts params.inspect
		puts '=' * 25 + 'UPDATE' + '=' * 25 + "\n"
		@comment = Comment.find(params[:id])
		comment_params = params.require(:comment).permit(:content)
		@comment.update(comment_params)
		redirect_to(gossip_path(params[:gossip_id]))
	end

end
