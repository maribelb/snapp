class Message < ActiveRecord::Base
  validates :subject, presence: true, length: { minimum: 5 }
  belongs_to :user
end
