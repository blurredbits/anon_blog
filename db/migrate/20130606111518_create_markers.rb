class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
