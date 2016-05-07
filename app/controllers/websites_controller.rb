class WebsitesController < ApplicationController
  def index
  	@websites = Website.all
  end

  def new
  	@website = Website.new
  end

  def create
  	@website = Website.new(website_params)
  	array = ("a".."z").map {|letter| letter}
  	@website.short = array.sample(4).join

  	if @website.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def show
  		if params[:id].to_i == 0
			@website = Website.find_by(short: "#{params[:id]}")
		else
			@website = Website.find(params[:id])
		end
		redirect_to @website.address
  end

  private

  def website_params
  	params.require(:website).permit(:address)
  end
  
end
