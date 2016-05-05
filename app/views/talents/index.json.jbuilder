json.array!(@talents) do |talent|
  json.extract! talent, :id, :name, :description, :skill, :email
  json.url talent_url(talent, format: :json)
end
