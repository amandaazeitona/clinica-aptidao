class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.references :macro_service, index: true
      t.string :name, null: false
      t.decimal :price
      t.timestamps
    end
  end
end
