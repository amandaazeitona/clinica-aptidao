class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.belongs_to :section, index: true
      t.string :text
      t.timestamps
    end
  end
end
