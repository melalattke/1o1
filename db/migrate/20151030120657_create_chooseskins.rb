class CreateChooseskins < ActiveRecord::Migration
  def change
    create_table :chooseskins do |t|

      t.timestamps
    end
  end
end
