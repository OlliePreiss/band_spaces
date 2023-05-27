class PagesController < ApplicationController
  def home
    @bandspaces = BandSpace.first(8)
  end
end
