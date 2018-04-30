class Doctor < ApplicationRecord
    
  has_many :patients
  has_many :appointments
  
 # validates :patient, presence: true, if: 'patient'
  
  scope :patient_count, -> { where(patient: true).count }

  
end
