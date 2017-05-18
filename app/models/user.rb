class User < ActiveRecord::Base
#class User < ApplicationRecord
  validates :name, presence: true
end
 
User.create(name: "John Doe").valid? # => true
User.create(name: nil).valid? # => false
#mount_uploader :image, ImageUploader
#end
