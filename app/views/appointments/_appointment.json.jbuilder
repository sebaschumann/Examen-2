json.extract! appointment, :id, :appointment_date, :medical_center_id, :worker_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
