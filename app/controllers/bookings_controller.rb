class BookingsController < ApplicationController
  def index
    @bandspaces = BandSpace.all
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
  end
end
