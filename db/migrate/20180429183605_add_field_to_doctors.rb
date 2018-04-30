class AddFieldToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :doctorsname, :string
    add_column :doctors, :identification, :integer
    add_column :doctors, :clinic, :string
    add_column :doctors, :qualification, :string
  end
end
