class Recipe < ApplicationRecord
    belongs_to :category
    has_many :ingredients


    def category_name
        self.category.name
    end
end
