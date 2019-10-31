class City < ApplicationRecord
  # 1-N association with users table
  has_many :users
end
