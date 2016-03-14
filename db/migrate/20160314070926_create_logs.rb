class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :user
      t.string :action

      t.timestamps null: false
    end
  end
end
