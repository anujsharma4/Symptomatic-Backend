class Patient < ApplicationRecord
  has_many :symptoms
  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients
end
