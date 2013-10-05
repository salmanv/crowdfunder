class Image < ActiveRecord::Base
  belongs_to :project
  attr_accessible :file

  mount_uploader :file, ImageUploader

  validates :project_id, presence: true
  validates :file, presence: true
end