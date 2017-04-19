class LpaAnswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :lpa_question
  
end
