class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.integer :product_id
      t.integer :tag_id

      t.timestamps
    end
    add_index :relationships, :product_id
    add_index :relationships, :tag_id
  end

  def self.down
    drop_table :relationships
  end
end
