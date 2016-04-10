json.array!(@matters) do |matter|
  json.extract! matter, :id, :title, :description
  json.url matter_url(matter, format: :json)
end
