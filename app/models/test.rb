class Test < ApplicationRecord
  def self.test_titles_by_category(category_title)
    category = Category.find_by_title(category_title)
    where(category_id: category).order(id: :desc).pluck(:title)
  end
end
