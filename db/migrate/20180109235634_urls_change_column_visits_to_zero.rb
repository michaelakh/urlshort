class UrlsChangeColumnVisitsToZero < ActiveRecord::Migration[5.0]
  def up
    change_column("urls", "visits", :bigint, :default => 0)
  end
  
  def down
    change_column("urls", "visits", :string)
  end
end
