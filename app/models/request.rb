class Request < ApplicationRecord
  belongs_to :hospital, :optional => true

  
  validates :request, presence: true
end
