class WebsitesController < ApplicationController
  def index
  	@websites = Website.all
  end

  def new
  end

  def show
  end

  def create
  	@website = Website.new
  	array = ("a".."z").map {|letter| letter}
  	@website.short = array.sample(4).join

  	if @Website.save
  		websites_path
  	else
  		render 'new'
  	end
  end
end
