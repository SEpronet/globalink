json.extract! company, :id, :name, :location, :about, :user_id, :created_at, :updated_at
json.url company_url(company, format: :json)