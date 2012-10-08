class Comment < ActiveRecord::Base
  belongs_to      :post
  attr_accessible :body
  
  validate :body, :presence => true
end
