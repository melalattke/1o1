class AddColumnToSkin < ActiveRecord::Migration
  def change
    add_column :skins, :name2, :string
  end
end
