json.extract! lpa_question, :id, :title, :lpa_survey_id, :question_type, :sort, :active_status, :created_at, :updated_at
json.url lpa_question_url(lpa_question, format: :json)
