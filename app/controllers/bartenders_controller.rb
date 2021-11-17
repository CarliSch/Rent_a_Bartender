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
    @bartender = Bartender.new(bartender_params)
    @bartender.user = current_user
    if @bartender.save
      redirect_to bartender_path(@bartender)
    else
      render :new
    end
  end

  private

  def bartender_params
  params.require(:bartender).permit(:city, :description, :photo)
  end
end
