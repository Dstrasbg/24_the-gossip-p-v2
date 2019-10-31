class Gossip < ApplicationRecord

  validates :title, presence: true, length: {in: 3..50}
  validates :content, presence: true
  
  # 1-N association with users table
  belongs_to :user

  # 1-N association with gossip_meta table
  has_many :gossip_meta

  # N-N association with tags table via the gossip_meta table
  has_many :tags, through: :gossip_meta

  # 1-N polymorphic association with comments as commentable
  has_many :comments, as: :commentable

  # 1-N associations with likes
  has_many :likes
end
