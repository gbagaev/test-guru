class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_answers_limit, on: :create

  private

  def validate_answers_limit
    errors.add(:question, 'Too many answers for question') if (1..4).include?(question.answers_count)
  end
end
