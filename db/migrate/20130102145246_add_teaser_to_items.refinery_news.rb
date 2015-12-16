# This migration comes from refinery_news (originally 20130201123476)
class AddTeaserToItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :teaser, :text
  end
end