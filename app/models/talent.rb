class Talent < ActiveRecord::Base
  acts_as_list
  mount_uploader :image, ImageUploader
end
