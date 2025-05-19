class PlacesController < ApplicationController

  def index 
    @places = Place.all
  end

  def show
      @place = Place.find_by({ "id" => params["id"]})
  end

  def create
    @place = Place.new


    @place["name"] = params["name"]

    @


  def new
      @place = Place.new
  end




end
