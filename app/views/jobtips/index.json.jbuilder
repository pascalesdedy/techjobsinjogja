json.array!(@jobtips) do |jobtip|
  json.extract! jobtip, :id, :title, :description, :image
  json.url jobtip_url(jobtip, format: :json)
end
