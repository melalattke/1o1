class AddAvatarColumnsToStyle < ActiveRecord::Migration
  	def up
    add_attachment :styles, :avatar
  end

  def down
    remove_attachment :styles, :avatar
  end

end
