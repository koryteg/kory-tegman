class Talent < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
end
