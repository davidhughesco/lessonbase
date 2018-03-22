json.extract! response, :id, :test_id, :name, :answer, :created_at, :updated_at
json.url response_url(response, format: :json)
