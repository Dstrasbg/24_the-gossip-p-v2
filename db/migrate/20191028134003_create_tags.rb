# each tag can be applied to several gossips
# several tags can be applied to the same gossip
class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title

      t.timestamps
    end
  end
end
