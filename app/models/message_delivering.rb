# the join table that maps the N-N association between recipients and received_messages
class MessageDelivering < ApplicationRecord
  # 1-N association with recipients (users) table
  # class_name tells rails recipient is a user
  belongs_to :recipient, class_name: 'User'

  # 1-N association with received_messages (private_messages) table
  # class_name tells rails received_message is a private_message
  belongs_to :received_message, class_name: 'PrivateMessage'
end
