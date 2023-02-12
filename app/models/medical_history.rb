class MedicalHistory < ApplicationRecord
    validates_presence_of :date, :details
    belongs_to :patient, class_name: 'Patient'
end
