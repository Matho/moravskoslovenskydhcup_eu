# This migration comes from refinery_news (originally 20130201123456)
class AddPositionToNewsItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :position, :integer
  end
end
