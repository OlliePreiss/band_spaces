class BookingsController < ApplicationController
  def index
    @bandspace = BandSpace.find(params[:band_space_id])
    @bookings = Booking.all
  end

  def show
    @bandspace = BandSpace.find(params[:band_space_id])
    # @bookings = @bandspace.bookings
  end

  def new
    @bandspace = BandSpace.find(params[:band_space_id])
    @booking = Booking.new
    # raise
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
    @bandspace = BandSpace.find(params[:band_space_id])
    # find current booking and destory
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to band_spaces_url, notice: "booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:band_space_id, :user_id, :date)
  end
end


# def create
#   @bandspace = BandSpace.new(bandspace_params)
#   @bandspace.user = current_user
#   if @bandspace.save
#     redirect_to band_space_path(@bandspace)
#   else
#     render :new, status: :unprocessable_entity
#   end
# end
