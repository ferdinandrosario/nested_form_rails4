json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :is_active
  json.url survey_url(survey, format: :json)
end
