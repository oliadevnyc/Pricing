class AddAttachmentAvatarToRods < ActiveRecord::Migration
  def self.up
    change_table :rods do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :rods, :avatar
  end
end
