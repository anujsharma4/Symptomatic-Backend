class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor

  end

  def login
    @doctor = Doctor.find_by(doctor_params)
    render json: @doctor
  end


  private

  def doctor_params
    params.require(:doctor).permit(:email, :password)
  end



end
