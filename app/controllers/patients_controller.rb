class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient

  end

  def create
    @patient = Patient.create(patient_params)
    render json: @patient
  end


# private
#
# def patient_params
#   params.require(:patient).permit(:info, :duration, :severity, :patient_id)
# end


end
