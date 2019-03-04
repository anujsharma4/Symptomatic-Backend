class SymptomsController < ApplicationController

  def index
    @symptoms = Symptom.all
    render json: @symptoms
  end

  def show
    @symptom = Symptom.find(params[:id])
    render json: @symptom

  end

  def create

    @symptom = Symptom.create(symptom_params)
    render json: @symptom
  end



  private

  def symptom_params
    params.require(:symptoms).permit(:info, :duration, :severity, :patient_id)
  end




end
