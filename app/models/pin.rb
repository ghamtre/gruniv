class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
has_attached_file :image, :styles => { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, :storage => :dropbox,
    :dropbox_credentials => { app_key: ENV['APP_KEY'],
                              app_secret: ENV['APP_SECRET'],
                              access_token: ENV['ACCESS_TOKEN'],
                              access_token_secret: ENV['ACCESS_TOKEN_SECRET'],
                              user_id: ENV['USER_ID'],
                              access_type: 'app_folder'}
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
validates_attachment_presence :image 
end
