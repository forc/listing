class HomeController < ApplicationController
  def index
    @countries = Country.all
    @states = if params[:country]
      State.where(country_id: params[:country])
    else
      [] 
    end
  end
end
