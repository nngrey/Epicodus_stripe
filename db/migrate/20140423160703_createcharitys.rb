class Createcharitys < ActiveRecord::Migration
  def change
    create_table :charitys do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
