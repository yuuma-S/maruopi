json.extract! question, :id, :end_user_id, :title, :body, :created_at, :updated_at
json.url question_url(question, format: :json)
