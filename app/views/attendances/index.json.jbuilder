json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :time_in, :time_out, :child_id
  json.url attendance_url(attendance, format: :json)
end
