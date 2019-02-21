class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :info, :duration, :severity, :patient_id
  belongs_to :patient
end
