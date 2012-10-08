class Post < ActiveRecord::Base
  belongs_to      :category
  has_many        :comments
  attr_accessible :content, :title, :category_id
  
  validates  :title, :content, :category_id, :presence => true
end
