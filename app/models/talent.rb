class Talent < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  acts_as_list
end
