class LpaSurvey < ActiveRecord::Base
  belongs_to :user
  
  has_many :lpa_questions, inverse_of: :lpa_survey
  accepts_nested_attributes_for :lpa_questions, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title

end
