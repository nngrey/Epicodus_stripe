class Changetablenamecharitys < ActiveRecord::Migration
  def change
    rename_table :charitys, :charities
  end
end
