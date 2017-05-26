class CreateCrowns < ActiveRecord::Migration
  def change
    create_table :crowns do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
