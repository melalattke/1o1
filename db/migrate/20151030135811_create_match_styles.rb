class CreateMatchStyles < ActiveRecord::Migration
  def change
    create_table :match_styles do |t|
      t.integer :style_id
      t.integer :item_id

      t.timestamps
    end
  end
end
