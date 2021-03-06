class InternsController < ApplicationController

	def index
		@interns = Intern.all
	end
	
	def show
		@intern = Intern.find(params[:id])
	end
	
	def new
		@intern = Intern.new
	end
	
	def create
		@intern = Intern.new(params[:intern])
		if @intern.save
			flash[:notice] = "Success: Intern Put to Work!"
			redirect_to interns_url	
		else
			flash[:error] = "FAIL: You're dumber than an Intern!"
			render :action => "new"
		end
	end

  def destroy 
    @intern = Intern.find(params[:id])
    if @intern.destroy
      flash[:notice] = "Intern Disposed Of"
      redirect_to interns_url
      else
      flash[:error] = "Unable to dispose of intern, the uprising begins..."
      render :action => "show"
    end
  end
end
