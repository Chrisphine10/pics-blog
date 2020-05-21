class Blog < ApplicationRecord
  belongs_to :category
  def self.search(search)

    if search
      joins(:category).where("categories.id = blogs.category_id")
      .where("title LIKE ? OR categories.category LIKE ?", "%#{search}%", "%#{search}%")
    else

    end

  end
end
