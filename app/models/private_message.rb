class PrivateMessage < ApplicationRecord
  # 1-N association with senders (users) table
  belongs_to :sender, class_name: 'User'

  # 1-N association with message_deliverings table
  has_many :message_deliverings, foreign_key: :received_message_id

  # N-N association with recipients (users) table via message_deliverings table
  has_many :recipients, through: :message_deliverings, source: :recipient
end
