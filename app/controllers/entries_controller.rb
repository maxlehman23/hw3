class EntriesController < ApplicationController

  def new
    @entry = Entry.new 
    @place = Place.find_by({"id" => params["place_id"]})
  end


  def show
      @entry = Entry.find_by({ "id" => params["id"]})
      @place = Place.find_by({"id" => @entry["place_id"]})
  end



  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["date"] = params["date"]
    @entry["text"] = params["text"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{params["place_id"]}"

  end
end
