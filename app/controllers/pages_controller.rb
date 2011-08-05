class PagesController < ApplicationController
 
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bees }
    end
  end

  def app
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
end
