class WatchingsController < ApplicationController
	def index; create;  end

	def new
		@watching = Watching.new
		@show = Show.find_by_id params[:show]
	end

	def edit
		@watching = Watching.find params[:id]
	end

	def update
		@watching = Watching.find(params[:id])
	    if @watching.update_attributes(watching_params)
	      redirect_to shows_path
	    else
	      render shows_path
	    end
	end


	def create
		@show = Show.find_by_id params[:show]
		@watching = Watching.new(watching_params)	
		@watching.watcher = @current_user
		@watching.show = @show
		if @watching.save
			flash[:notice]="Tracked #{@show.title}!"
		end
		redirect_to shows_path
	end

	def destroy
		@watching = Watching.find_by_id(params[:id])
		@show = @watching.show.id
		@watching.destroy
		redirect_to (:back)
	end

	private
    def watching_params
      params.require(:watching).permit(:watcher, :show, :status)
    end


end