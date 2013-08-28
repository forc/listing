class HomeController < ApplicationController
  def index
    @countries = Country.all
    @states = if params[:country]
      State.where(country_id: params[:country])
    else
      [] 
    end
    @cities = if params[:state]
      City.where(state_id: params[:state])
      else
       []
    end
  end
end
