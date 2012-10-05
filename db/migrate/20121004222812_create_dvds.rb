class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :name
      t.date :release_date
      t.text :summary
      t.string :asin
      t.integer :director_id      

      t.timestamps
    end
  end
end
