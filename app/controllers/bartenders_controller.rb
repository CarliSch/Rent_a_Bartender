class BartendersController < ApplicationController

  def index
    @bartenders = Bartender.all
    @markers = @bartenders.geocoded.map do |bartender|
      {
        lat: bartender.latitude,
        lng: bartender.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bartender: bartender })
      }
    end
  end

  def show
    @bartender = Bartender.find(params[:id])
  end

  def new
    @bartender = Bartender.new
  end

  def create
    
  end
end
