class Talent < ActiveRecord::Base
  before_save :set_position

  default_scope ->{
    order(position: :asc)
  }

  scope :not_archived, where("archive != ?", true)

  protected
  def set_position
    self.position ||= 1 + eval("#{self.class.to_s}.maximum(:position)").to_i
  end
  mount_uploader :image, ImageUploader
end
