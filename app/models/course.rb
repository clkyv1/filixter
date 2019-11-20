class Course < ApplicationRecord
  belongs_to :user
  has_many :sections

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  mount_uploader :image, ImageUploader   # Added for image uploader
  # belongs_to :course 


  #c = Course.new
  #c.image = params[:file]
end

#c.save!
#c.image.url 
#c.image.current_path
#c.image_identifier
