class AddAvatarColumnsToSkin < ActiveRecord::Migration
  	def up
    add_attachment :skins, :avatar
  end

  def down
    remove_attachment :skins, :avatar
  end
end
