class Blog < ActiveRecord::Base
  acts_as_url :title
  def to_param
    url # or whatever you set :url_attribute to
  end
end
