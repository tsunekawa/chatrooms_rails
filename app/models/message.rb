class Message < ActiveRecord::Base
  attr_accessible :content, :room_id
  validates_presence_of :content
  validates_presence_of :room_id

  belongs_to :room
end
