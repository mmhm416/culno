class Message < ApplicationRecord
  belongs_to :crop
  belongs_to :user
end
