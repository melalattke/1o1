class CreateMatchSkins < ActiveRecord::Migration
  def change
    create_table :match_skins do |t|
      t.integer :Skins_id
      t.integer :Items_id

      t.timestamps
    end
  end
end
