class AddBandIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :band_id, :integer
  end
end
