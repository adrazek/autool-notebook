class AddTargetToNotebook < ActiveRecord::Migration
  def change
    add_column :autool_notebook_notebooks, :target_id, :integer
    change_column :autool_notebook_notebooks, :target_id, :integer, :null => false
  end
end
