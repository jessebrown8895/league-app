class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :sport
      t.integer :level
      t.date :day
      t.string :time

      t.timestamps null: false
    end
  end
end
