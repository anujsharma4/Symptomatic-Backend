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
    @patient = Patient.find_by(patient_params)
    render json: Patient.find_by(email: patient_params["email"], password: patient_params["password"])
  end


private

def patient_params
  params.require(:patient).permit(:email, :password)
end


end
