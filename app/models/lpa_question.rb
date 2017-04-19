class LpaQuestion < ActiveRecord::Base
  belongs_to :lpa_survey

  has_many :lpa_answers, inverse_of: :lpa_question
  accepts_nested_attributes_for :lpa_answers, reject_if: :all_blank, allow_destroy: true

  
end
