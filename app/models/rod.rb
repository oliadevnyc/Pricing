class Rod < ActiveRecord::Base
  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "100x100>" }
end
