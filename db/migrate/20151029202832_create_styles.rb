class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.integer :time
      t.boolean :day
      t.integer :difficulty

      t.timestamps
    end
  end
end
