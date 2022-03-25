class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :sport
      t.string :level
      t.string :day
      t.string :time
      t.timestamps null: false
    end
  end
end
