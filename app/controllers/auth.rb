class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @doctor = Doctor.find_by(email: doctor_login_params[:email])
    #User#authenticate comes from BCrypt
    if @doctor && @doctor.authenticate(doctor_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ doctor_id: @doctor.id })
      render json: { doctor: DoctorSerializer.new(@doctor), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def doctor_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:doctor).permit(:email, :password)
  end
end
