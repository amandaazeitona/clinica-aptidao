class DropSectionsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :sections do |t|
      t.string :name
      t.timestamps
    end
  end
end
