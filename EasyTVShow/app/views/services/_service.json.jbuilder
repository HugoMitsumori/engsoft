json.extract! service, :id, :contractor_id, :service_id, :solution_id, :service_name, :start_date, :end_date, :status, :price, :final_score, :created_at, :updated_at
json.url service_url(service, format: :json)