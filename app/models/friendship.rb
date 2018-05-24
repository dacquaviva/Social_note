class Friendship < ApplicationRecord
   belongs_to :user, :dependent => :delete
  belongs_to :friend, :class_name => "User",:dependent => :delete
end
