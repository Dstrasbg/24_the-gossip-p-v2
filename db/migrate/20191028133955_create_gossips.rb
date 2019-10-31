class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      
      # 1-N association with users table
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
