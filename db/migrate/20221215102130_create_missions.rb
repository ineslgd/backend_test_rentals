class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.references :listing, null: false, foreign_key: true
      t.date :date
      t.integer :mission_type
      t.integer :price

      t.timestamps
    end
  end
end
