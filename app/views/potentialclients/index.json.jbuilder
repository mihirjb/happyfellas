json.array!(@potentialclients) do |potentialclient|
  json.extract! potentialclient, :id, :email, :fullname, :worktype, :budget
  json.url potentialclient_url(potentialclient, format: :json)
end
