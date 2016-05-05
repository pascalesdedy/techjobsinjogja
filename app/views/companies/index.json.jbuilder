json.array!(@companies) do |company|
  json.extract! company, :id, :logo, :title, :description, :url
  json.url company_url(company, format: :json)
end
