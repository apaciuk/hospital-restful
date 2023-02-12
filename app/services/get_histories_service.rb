class GetHistoriesService < ApplicationService 
    attr_reader :patient
    def initialize(patient)
        @patient = patient
    end 

    def call 
        @patient.medical_histories
    end 
end