class Tag < ApplicationRecord
  # 1-N association with gossip_meta table
  has_many :gossip_meta

  # N-N association with gossips table via gossips_meta table
  has_many :gossips, through: :gossip_meta
end
