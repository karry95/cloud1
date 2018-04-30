class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :department
      t.string :patient
      t.string :request
      t.references :hospital, foreign_key: true

      t.timestamps
    end
  end
end
