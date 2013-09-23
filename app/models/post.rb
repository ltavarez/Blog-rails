class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :questions, dependent: :destroy
	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
	validates :title, presence: true,
                    length: { minimum: 5 }
end
