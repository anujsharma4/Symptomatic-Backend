class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient

  end

  def signin
    render json: User.find_by(email: params["email"], password: params["password"])
  end


# private
#
# def patient_params
#   params.require(:patient).permit(:info, :duration, :severity, :patient_id)
# end


end
