class Asset < ActiveRecord::Base
	belongs_to :post
	#attr_accessible :assets
	has_attached_file :image,
    :styles => {
      :thumb=> "100x100#",
      :small  => "300x300>",
      :large => "600x600>"
        }
end
