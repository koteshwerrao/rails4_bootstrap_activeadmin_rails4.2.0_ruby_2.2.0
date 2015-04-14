json.array!(@students) do |student|
  json.extract! student, :id, :name, :dob, :address
  json.url student_url(student, format: :json)
end
