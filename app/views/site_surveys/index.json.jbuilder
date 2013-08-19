json.array!(@site_surveys) do |site_survey|
  json.extract! site_survey, :date, :total, :freeNumber, :halfNumber, :person_id, :party_id
  json.url site_survey_url(site_survey, format: :json)
end
