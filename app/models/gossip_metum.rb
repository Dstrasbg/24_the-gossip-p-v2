# the join table that maps the N-N association between gossips and tags
class GossipMetum < ApplicationRecord
  # 1-N association with gossips table
  belongs_to :gossip

  # 1-N association with tags table
  belongs_to :tag
end
