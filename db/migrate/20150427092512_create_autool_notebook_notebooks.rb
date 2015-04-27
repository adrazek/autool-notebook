class CreateAutoolNotebookNotebooks < ActiveRecord::Migration
  def change
    create_table :autool_notebook_notebooks do |t|
      t.string :title
      t.integer :owner_id
      t.timestamps
    end
  end
end
