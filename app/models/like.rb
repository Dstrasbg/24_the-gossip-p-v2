class Like < ApplicationRecord
  # 1-N associations with users, gossips and comments
  belongs_to :user
  # can apply to a gossip or a comment
  belongs_to :gossip, optional: true if :comment_id
  belongs_to :comment, optional: true if :gossip_id
end
