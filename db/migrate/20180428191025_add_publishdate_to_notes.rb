class AddPublishdateToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :title, :string
    add_column :notes, :publishdate, :datetime
  end
end
