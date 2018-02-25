class DropPricesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :prices do |t|      
      t.integer :price
      t.timestamps
    end
  end
end
