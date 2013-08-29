class HomeController < ApplicationController
  def index
    @countries = Country.all
    @country_id = params[:country]
    @state_id = params[:state]
    @city_id = params[:city]
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

    respond_to do |format|
      format.html
      format.json {render json:  {states: @states} }
    end

  end
end
