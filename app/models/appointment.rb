class Appointment < ApplicationRecord
  belongs_to :doctor, :optional => true
  has_many :patients
  has_many :appointments
  
  validates :request, presence: true
  
   scope :patient_count, -> { where(patient: true).count }
end
