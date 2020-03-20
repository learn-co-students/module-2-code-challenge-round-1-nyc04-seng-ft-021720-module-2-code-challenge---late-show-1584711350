class AddPictureToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :picture_url, :string
  end
end
