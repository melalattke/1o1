class MatchSkin < ActiveRecord::Base
	belongs_to :skin
  belongs_to :item, :foreign_key => :Items_id
end
