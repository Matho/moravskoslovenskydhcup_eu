module Refinery
  module News
    module Admin
      class ItemsSweeper < ActionController::Caching::Sweeper
        observe Item

        def sweep(item)
          begin
            expire_fragment( %r{news/index/#{item.id}} )
            expire_fragment( %r{news/show/#{item.id}} )
            expire_fragment( %r{news/index/page/\d*})
          rescue NotImplementedError
            Rails.cache.clear
            warn "**** [REFINERY News Items] The cache store you are using is not compatible with this engine. Only file_store is supported. Clearing entire cache instead ***"
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
end