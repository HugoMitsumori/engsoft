class HomeController < ApplicationController
  def index  	
  	if @current_user != nil
  		@shows = []
  		@recent_shows=@shows.sort {|a,b| a.release <=> b.release}.reverse
  	else
  		@recent_shows=[]
  	end
  end
end