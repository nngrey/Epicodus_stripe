class Addcolumnstripetoken < ActiveRecord::Migration
  def change
    add_column :users, :stripe_Token, :string
  end
end
