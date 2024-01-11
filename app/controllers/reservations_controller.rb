class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: @reservation
    else
      render json: { errors: @reservation.errors.full_message }, status: :unprocessable_entity
    end

  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :car_id, :duration)
  end
end
