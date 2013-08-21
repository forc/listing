class CityCategoryRelation < ActiveRecord::Base
  belongs_to :city
  belongs_to :category
end
