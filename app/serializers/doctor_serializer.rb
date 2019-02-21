class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :doctor_patients
end
