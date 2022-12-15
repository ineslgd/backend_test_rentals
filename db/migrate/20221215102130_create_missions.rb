class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.references :listing, null: false, foreign_key: true
      t.date :first_checkin
      t.date :last_checkout
      t.date :checkout_checkin

      t.timestamps
    end
  end
end
