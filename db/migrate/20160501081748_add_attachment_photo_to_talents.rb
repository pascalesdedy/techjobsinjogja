class AddAttachmentPhotoToTalents < ActiveRecord::Migration
  def self.up
    change_table :talents do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :talents, :photo
  end
end
