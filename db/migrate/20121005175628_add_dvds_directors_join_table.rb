class AddDvdsDirectorsJoinTable < ActiveRecord::Migration
  def up
    create_table :directors_dvds, :id => false do |t|
      t.integer :dvd_id
      t.integer :director_id
    end  	  	
  end

  def down
    drop_table :directors_dvds  	  	
  end
end
