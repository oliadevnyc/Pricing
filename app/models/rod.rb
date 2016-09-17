class Rod < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" },
      :default_url => "/images/:style/missing.png",
      :url  => ":s3_domain_url",
      :path => "public/avatars/:id/:style_:basename.:extension",
      :storage => :fog,
      :fog_credentials => {
          provider: 'AWS',
          aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
          aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
          AWS_REGION:'us-east-1'
      },
      fog_directory: ENV["FOG_DIRECTORY"]

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
