class Answer < ActiveRecord::Base
  belongs_to :questions
  validates :title, :content, :question_id, presence: true
end
