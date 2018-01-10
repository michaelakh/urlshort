class AddUrlToUrls < ActiveRecord::Migration[5.0]
  def up
      add_column("urls", "url", :string)
puts "************************************
** add column, 'url' to table urls *
************************************"
  end
  def down
    remove_column("urls", "url")
  end
end
