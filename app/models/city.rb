class City < ActiveRecord::Base
  belongs_to :state
  has_many :city_category_relations
  has_many :categories, through: :city_category_relations
end
