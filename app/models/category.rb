class Category < ActiveRecord::Base
  has_many :city_category_relations
  has_many :cities, through: :city_category_relations
end
