class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  default_scope { order(id: :desc) }

  scope :by_level, -> (level) { where(level: level) }
  scope :by_user_and_level, -> (user_id, test_level) { joins(:tests_users).where(tests_users: { user_id: user_id }, tests: {level: test_level }) }
  scope :test_titles_by_category, -> (category_title) { joins(:category).where(categories: { title: category_title }).pluck(:title) }

  scope :easy, -> { by_level(0..1) }
  scope :medium, -> { by_level(2..4) }
  scope :hard, -> { by_level(5..Float::INFINITY) }

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true,
                                    greater_than: -1,
                                    allow_nil: true }
end
