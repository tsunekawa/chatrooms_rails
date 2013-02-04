class ChangeNameColumnToUser < ActiveRecord::Migration
  def up
    change_column :messages, :user_id, :integer, :null=>false
  end

  def down
    change_column :messages, :user_id, :integer, :null=>true
  end
end
