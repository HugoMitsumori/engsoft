module ShowsHelper
	def tracking?(show)
		@watching = Watching.where(watcher: current_user, show: show)
		if @watching.length==0
			return false
		else 
			return true
		end
	end

	def watching_show(show)
		@watching = Watching.where(watcher: current_user, show: show).first
	end

	def track_status(show)
		@watching = Watching.where(watcher: current_user, show: show)
		if @watching.length==0
			return "Untracked"
		else
			return @watching.first.status
		end
	end
end
