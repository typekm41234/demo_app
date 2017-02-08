class Micropost < ActiveRecord::Base
  belongs_to :user
  
  validate :content, length: {max: 140}
  validate :user_id, :presence => true

  
end
