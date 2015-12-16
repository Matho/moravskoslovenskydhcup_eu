module Refinery
  module Admin
    class SnippetSweeper < ActionController::Caching::Sweeper
      observe Snippet

      def sweep(snippet)
        # only file store supports regexp

        begin
          # TODO This should be replaced with FileUtils.rm to get better speed
          # when the page is loaded, we dont't know id of snippets, so here we must clear all snippets cache

          expire_fragment( %r{snippets/\d*})
          expire_fragment( %r[page_parts/\d*])
        rescue NotImplementedError
          Rails.cache.clear
          warn "**** [REFINERY SNIPPET] The cache store you are using is not compatible with this engine. Only file_store is supported. Clearing entire cache instead ***"
        ensure
          return true
        end
      end

      alias_method :after_create,  :sweep
      alias_method :after_update,  :sweep
      alias_method :after_destroy, :sweep
    end
  end
end