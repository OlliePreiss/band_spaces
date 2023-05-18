class BandSpacesController < ApplicationController
  before_action :set_bandspace, only: [:show]

  def index
    @bandspaces = BandSpace.all
  end

  def show
  end

  def new
    @bandspace = BandSpace.new
  end

  def create
    @bandspace = BandSpace.new(bandspace_params)
    @bandspace.user = current_user
    if @bandspace.save
      redirect_to band_space_path(@bandspace)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bandspace
    @bandspace = BandSpace.find(params[:id])
  end

  def bandspace_params
    params.require(:band_space).permit(:name, :description, :price, :address, :capacity, :photo_url)
  end
end
