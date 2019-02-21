class DoctorPatientSerializer < ActiveModel::Serializer
  attributes :id, :doctor_id, :patient_id
  belongs_to :doctor 
  belongs_to :patient
end
