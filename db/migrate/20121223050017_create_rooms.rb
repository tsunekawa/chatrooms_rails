class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name

      t.timestamps
    end

    add_column :messages, :room_id, :foreign_key
  end
end
