class EntriesController < ApplicationController


  def show
      @entry = Entry.find_by({ "id" => params["id"]})
      @place = Place.find_by({"id" => @entry["place_id"]})
  end

  def new
     @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    @entry["date"] = params["date"]
    @entry["text"] = params["text"]

    @entry["place_id"] = params["company_id"]

    @entry.save

    redirect_to "/entries/#{@entry["place_id"]}"

  end
end
