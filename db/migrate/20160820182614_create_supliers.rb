class CreateSupliers < ActiveRecord::Migration
  def change
    create_table :supliers do |t|
      t.string :name
      t.string :federal_id
      t.string :country
      t.string :city
      t.string :state
      t.string :address
      t.string :zip_code

      t.timestamps
    end

    add_index :supliers, :federal_id, unique: true
  end
end
