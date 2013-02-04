class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :unique=>false
  end
end
