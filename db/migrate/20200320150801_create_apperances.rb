class CreateApperances < ActiveRecord::Migration[5.1]
  def change
    create_table :apperances do |t|
      t.integer :guest_id
      t.integer :episode_id
    end
  end
end
