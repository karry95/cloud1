class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :patient
      t.date :date
      t.string :time
      t.text :details
      t.references :doc, foreign_key: true

      t.timestamps
    end
  end
end
