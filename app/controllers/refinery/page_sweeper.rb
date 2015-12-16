# overriding Refinery:Core
module Refinery
  class PageSweeper < ActionController::Caching::Sweeper
    observe Page

    def sweep(page)
      #I dont use page caching on this site, so leaving commented
      #expire_cache # calling expire page cache protected method in Refinery::PageSweeper

      expire_fragment( %r{submenu/\d*})
      expire_fragment( %r{main_navigation_})


      if !page.nil? #only in create action ?
        begin
          expire_fragment( %r{page_parts/#{page.id}} )
        rescue
          Rails.cache.clear
          warn "**** [SWEEPER] Error during sweeping"
        end
      end
    end
    alias_method :after_create, :sweep
    alias_method :after_update, :sweep
    alias_method :after_destroy, :sweep


    protected

    def expire_cache
      # TODO: Where does page_cache_directory come from??
      return unless page_cache_directory
      page_cache_directory_path = Pathname.new(page_cache_directory.to_s)

      # Delete the full Cache
      if (cache_root = page_cache_directory_path.join('refinery', 'cache', 'pages')).directory?
        cache_root.rmtree
      end

      # Delete the pages index files (/refinery/cache/pages.html*)
      Pathname.glob(page_cache_directory_path.join('refinery', 'cache', 'pages.html*')).each do |cache_index|
        cache_index.delete
      end
    end

  end
end
