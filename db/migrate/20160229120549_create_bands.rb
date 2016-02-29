class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :title
      t.text :description
      t.string :band_members
      t.string :rating

      t.timestamps null: false
    end
  end
end
