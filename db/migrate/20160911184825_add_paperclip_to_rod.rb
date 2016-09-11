class AddPaperclipToRod < ActiveRecord::Migration
  def change
    add_attachment :rods, :image  
  end
end
