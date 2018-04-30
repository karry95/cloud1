json.extract! doctor, :id, :patient, :date, :time, :details, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
