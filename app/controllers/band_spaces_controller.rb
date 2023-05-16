class BandSpacesController < ApplicationController
  before_action :set_bandspace, only: [:show]

  def index
    @bandspaces = BandSpace.all
  end

  def show
  end

  def create
  end

  def new
  end

  private

  def set_bandspace
    @bandspace = BandSpace.find(params[:id])
  end
end
