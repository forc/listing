class CreateCityCategoryRelations < ActiveRecord::Migration
  def change
    create_table :city_category_relations do |t|
      t.integer :city_id
      t.integer :category_id

      t.timestamps
    end
  end
end
