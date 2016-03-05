class AddAttachmentImageToBands < ActiveRecord::Migration
  def self.up
    change_table :bands do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bands, :image
  end
end
