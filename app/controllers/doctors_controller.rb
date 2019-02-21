class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor

  end

  def create

  end




end
