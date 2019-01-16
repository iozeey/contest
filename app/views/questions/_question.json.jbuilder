json.extract! question, :id, :question, :answer, :instructions, :contest_id, :created_at, :updated_at
json.url question_url(question, format: :json)
