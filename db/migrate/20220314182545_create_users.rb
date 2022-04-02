class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :nickname
      t.string :level
      t.string :name
      t.timestamps null: false
      # t.belongs_to :league, default: 1
      t.integer :league_id, default: 1
      
    end
  end
end
