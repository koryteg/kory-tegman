class Blog < ActiveRecord::Base
  acts_as_url :title
  validates :title, presence: true
  validates :content, presence: true
  validates :url, presence: true
  default_scope ->{
    order(created_at: :desc)
  }
  def to_param
    url # or whatever you set :url_attribute to
  end
end
