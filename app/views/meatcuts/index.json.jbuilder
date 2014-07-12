json.array!(@meatcuts) do |meatcut|
  json.extract! meatcut, :id, :name, :animal, :primal, :description, :alt_names
  json.url meatcut_url(meatcut, format: :json)
end
