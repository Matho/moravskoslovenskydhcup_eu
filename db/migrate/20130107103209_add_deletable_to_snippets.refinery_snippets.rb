# This migration comes from refinery_snippets (originally 4)
class AddDeletableToSnippets < ActiveRecord::Migration

  def change
    add_column ::Refinery::Snippet.table_name, :deletable, :boolean, :default=> true, :null=>false
  end
end
