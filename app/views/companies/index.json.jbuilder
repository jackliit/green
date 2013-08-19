json.array!(@companies) do |company|
  json.extract! company, :sn, :name, :telphone, :fax, :email, :type
  json.url company_url(company, format: :json)
end
