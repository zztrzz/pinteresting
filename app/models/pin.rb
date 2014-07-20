class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :answers  
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
accepts_nested_attributes_for :answers
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

validates :image, presence: true
  validates :description, presence: true

   
end 

