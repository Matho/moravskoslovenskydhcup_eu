Refinery::Admin::SnippetsPagePartsController.class_eval do
  cache_sweeper Refinery::Admin::SnippetPagePartSweeper
end