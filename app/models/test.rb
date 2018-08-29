class Test < ApplicationRecord
  def self.test_titles_by_category(category_title)
    Tests.where(category_title).order(id: :desc).pluck(:title)
  end
end
