class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      
      # 1-N associations with user
      t.belongs_to :user, index: true

      # 1-N polymorphic association with gossip and comments (and anything 'commentable')
      t.belongs_to :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
