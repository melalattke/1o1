class Item < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
has_many :match_skins
  has_many :skins, through: :match_skin
 has_many :match_styles
  has_many :style, through: :match_style
end
