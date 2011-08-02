class User < ActiveRecord::Base
has_many :articles ,:dependent => :destroy
has_one :profile , :dependent => :destroy
has_and_belongs_to_many :groups
validates_presence_of :name
validates_presence_of :email
end
