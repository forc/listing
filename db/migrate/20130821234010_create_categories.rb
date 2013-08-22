class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :ctype
      t.string :sub_type

      t.timestamps
    end
  end
end
