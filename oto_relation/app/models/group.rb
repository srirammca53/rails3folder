class Group < ActiveRecord::Base
has_and_belongs_to_many :users
validates_presence_of :groupname 
validates_length_of :groupname, :minimum => 3
end
