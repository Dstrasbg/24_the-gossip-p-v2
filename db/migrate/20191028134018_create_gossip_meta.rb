class CreateGossipMeta < ActiveRecord::Migration[5.2]
  def change
    # the join table to map the N-N association between gossips and tags
    create_table :gossip_meta do |t|
      # 1-N association with gossips
      t.belongs_to :gossip, index: true
      # 1-N association with tags table
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
