class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    redirect_to mine_bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bandspace = BandSpace.find(params[:band_space_id])
    @booking = Booking.new
    # raise
  end

  def mine
    @bookings = Booking.where(params[:user_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bandspace = BandSpace.find(params[:band_space_id])
    @booking.band_space = @bandspace
    @booking.user = current_user
    # raise
    if @booking.save
      redirect_to band_space_path(@bandspace), notice: 'Booking was successfully created.'
    end
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to mine_bookings_path, notice: "booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:band_space_id, :user_id, :date)
  end
end
