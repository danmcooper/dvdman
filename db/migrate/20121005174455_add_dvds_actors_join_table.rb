class AddDvdsActorsJoinTable < ActiveRecord::Migration
  def up
    create_table :actors_dvds, :id => false do |t|
      t.integer :dvd_id
      t.integer :actor_id
    end 	
  end

  def down
    drop_table :actors_dvds  	
  end
end
