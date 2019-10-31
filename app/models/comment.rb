class Comment < ApplicationRecord
  # 1-N associations with user
  belongs_to :user

  # 1-N polymorphic association with comment and gossip
  belongs_to :commentable, polymorphic: true # can be associated to anything commentable
  has_many :comments, as: :commentable # is something commentable

  # 1-N associations with likes
  has_many :likes
end
