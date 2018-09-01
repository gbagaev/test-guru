class Test < ApplicationRecord
  def self.test_titles_by_category(category_title)
    # category = Category.find_by_title(category_title)
    # where(category_id: category).order(id: :desc).pluck(:title)

    # Test.joins("INNER JOIN categories ON tests.category_id = categories.id").where('categories.title' => category_title).order("tests.id DESC").pluck(:title)

    Test.joins("INNER JOIN categories ON tests.category_id = categories.id").where( categories: { title: category_title }).order("tests.id DESC").pluck(:title)
  end
end
