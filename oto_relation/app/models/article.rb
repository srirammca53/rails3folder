class Article < ActiveRecord::Base
  belongs_to :user
 has_many :comments
validates_presence_of :title, :minimum => 6
validates_presence_of :description, :minimum => 10
validates_uniqueness_of :title
end
