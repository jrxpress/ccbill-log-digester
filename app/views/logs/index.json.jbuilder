json.array!(@logs) do |log|
  json.extract! log, :id, :operation_type, :date, :username, :second_date, :ip
  json.url log_url(log, format: :json)
end
