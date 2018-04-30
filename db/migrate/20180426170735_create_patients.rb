class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :contact
      t.date :date_of_birth
      t.string :address
      t.string :injury
      t.string :action

      t.timestamps
    end
  end
end
