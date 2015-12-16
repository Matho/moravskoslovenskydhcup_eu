Refinery::Admin::SnippetsController.class_eval do
  cache_sweeper Refinery::Admin::SnippetSweeper
end