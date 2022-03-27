class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :nickname
      t.string :name
      t.timestamps null: false
      t.belongs_to :league
    end
  end
end
