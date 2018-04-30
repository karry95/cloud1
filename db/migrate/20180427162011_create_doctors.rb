class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :patient
      t.date :date
      t.string :time
      t.text :details

      t.timestamps
    end
  end
end
