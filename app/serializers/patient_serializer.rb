class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :age, :weight, :sex, :height, :picture
  has_many :doctor_patients
  has_many :symptoms
end
