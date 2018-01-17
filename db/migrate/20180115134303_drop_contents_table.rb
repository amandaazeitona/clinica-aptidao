class DropContentsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :contents do |t|
      t.belongs_to :section, index: true
      t.integer :section_id
      t.string :text
      t.timestamps null: false
    end
  end
end
