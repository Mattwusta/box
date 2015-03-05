class AddAttachmentImageToYourboxes < ActiveRecord::Migration
  def self.up
    change_table :yourboxes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :yourboxes, :image
  end
end
