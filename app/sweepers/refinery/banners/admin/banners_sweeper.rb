module Refinery
  module Banners
    module Admin
      class BannersSweeper < ActionController::Caching::Sweeper
        observe Banner

        def sweep(banner)
          begin
            expire_fragment( %r{banners/page/\d*})
          rescue NotImplementedError
            Rails.cache.clear
            warn "**** [REFINERY Banners] The cache store you are using is not compatible with this engine. Only file_store is supported. Clearing entire cache instead ***"
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