class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :slug
      t.string :visits
      t.string :snapshot

      t.timestamps
    end
  end
end
