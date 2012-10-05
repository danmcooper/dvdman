class AddIndexToDvdsName < ActiveRecord::Migration
  def change
  	add_index :dvds, :name, unique: true
  end
end
