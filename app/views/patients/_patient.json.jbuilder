json.extract! patient, :id, :name, :contact, :date_of_birth, :address, :injury, :action, :created_at, :updated_at
json.url patient_url(patient, format: :json)
