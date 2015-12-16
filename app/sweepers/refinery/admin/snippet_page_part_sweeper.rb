module Refinery
  module Admin
    class SnippetPagePartSweeper < ActionController::Caching::Sweeper
      observe SnippetPagePart

      def sweep(snippet_page_part)
        page_part = Refinery::PagePart.find(snippet_page_part.page_part_id)
        expire_fragment(%r{page_parts/#{page_part.refinery_page_id} })

      rescue

      end

      alias_method :after_save,  :sweep
      alias_method :after_destroy, :sweep
    end
  end
end