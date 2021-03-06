class RelationshipsController < ApplicationController
	def index; create;  end

	def new
		@relationship = Relationship.new
	end

	def create
		@follower = @current_user
		@followed = User.find_by_id params[:followed]
		@relationship = Relationship.where(follower: @follower, followed: @followed)
		if @relationship.length==0
			Relationship.create(follower: @follower, followed: @followed)
		end
		redirect_to (:back)
	end

	def destroy
		@relationship = Relationship.find_by_id(params[:id])
		@followed = @relationship.followed.id
		@relationship.destroy
		redirect_to (:back)
	end


end