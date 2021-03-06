class AddAttachmentPhotoToPromotion < ActiveRecord::Migration
  def self.up
    add_column :promotions, :photo_file_name, :string
    add_column :promotions, :photo_content_type, :string
    add_column :promotions, :photo_file_size, :integer
    add_column :promotions, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :promotions, :photo_file_name
    remove_column :promotions, :photo_content_type
    remove_column :promotions, :photo_file_size
    remove_column :promotions, :photo_updated_at
  end
end
