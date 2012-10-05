class AddIndexToDirectorsName < ActiveRecord::Migration
  def change
  	  	add_index :directors, :name, unique: true
  end
end
