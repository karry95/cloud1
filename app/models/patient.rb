class Patient < ActiveRecord::Base
validates :name, presence: true,
                    length: { minimum: 5 }

belongs_to :appointment, :optional => true
has_many :notes
has_many :requests

#search box for patients names
  def self.search(search)
    if search.present?
      Patient.where('name LIKE ?', "%#{search}%")
    else
      Patient.all
     
    end
  end    
end
