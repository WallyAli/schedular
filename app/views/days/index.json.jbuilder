json.array!(@days) do |day|
  json.extract! day, :id, :child_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  json.url day_url(day, format: :json)
end
