class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :slug
      t.bigint :visits , :default => 0
      t.string :snapshot

      t.timestamps
    end
  end
end
