class BartendersController < ApplicationController

  def index
    @bartenders = Bartender.all
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
