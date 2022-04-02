class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :sport
      t.string :day
      t.string :time
      t.integer :sport_id
      t.timestamps null: false
    end
  end
end
