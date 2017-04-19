json.extract! lpa_answer, :id, :body, :user_id, :question_id, :issue_description, :action_taken, :created_at, :updated_at
json.url lpa_answer_url(lpa_answer, format: :json)
