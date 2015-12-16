# This is for main navigation fragment caching - do cache expiration after reordering pages

Refinery::Admin::PagesController.class_eval do
  after_filter lambda{::Refinery::PageSweeper.instance.sweep(page)}, :only => [:update_positions]
end
