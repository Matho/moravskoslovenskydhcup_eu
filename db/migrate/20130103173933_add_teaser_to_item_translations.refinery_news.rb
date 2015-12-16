# This migration comes from refinery_news (originally 20130203123476)
class AddTeaserToItemTranslations < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item::Translation.table_name, :teaser, :text
  end
end
