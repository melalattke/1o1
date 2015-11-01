class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.integer :name

      t.timestamps
    end
  end
end
