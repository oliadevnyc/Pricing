class AddPhotoDetailsToRod < ActiveRecord::Migration
  def change
    add_column :rods, :photo_file_name, :string
    add_column :rods, :photo_content_type, :string
    add_column :rods, :photo_file_size, :integer
    add_column :rods, :photo_updated_at, :datetime
  end
end
