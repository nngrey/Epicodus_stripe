class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :charity_id
      t.decimal :donation_amount, precision: 6, scale: 2
      t.timestamps
    end
  end
end
