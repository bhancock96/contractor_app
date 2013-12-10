class Image < ActiveRecord::Base
  attr_accessible :file, :image_type, :contractor_id, :job_id

  validates_presence_of :file, :image_type

  belongs_to :job
  mount_uploader :file, ImageUploader
end
