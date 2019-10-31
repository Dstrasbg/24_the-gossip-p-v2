class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new('content' => params[:content],
                  			 	 'user_id' => 51,
                  			 	 'commentable_type' => "Gossip",
                  			 	 'commentable_id' => params[:gossip_id]
                  			  )
   		if @comment.save # essaie de sauvegarder en base @gossip
     		 redirect_to gossip_path(params[:gossip_id])
     	else
     		 redirect_to gossip_path(params[:gossip_id])
    	end

	end


end
