json.array!(@techniques) do |technique|
  json.extract! technique, :id, :name, :description, :dry, :equipment
  json.url technique_url(technique, format: :json)
end
