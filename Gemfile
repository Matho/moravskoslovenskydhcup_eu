source 'https://rubygems.org'

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end


gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


group :development, :test do
  gem 'sqlite3'
  gem 'refinerycms-testing'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'mongrel', '>= 1.2.0.pre2'
  gem "bullet"
  gem 'quiet_assets'
  gem "letter_opener"
  #gem "better_errors"
  #gem "binding_of_caller"
end

gem 'pg'
gem 'json', '>= 1.7.7'
gem 'jquery-rails', '~> 2.0.0'
gem 'execjs'
gem 'libv8'


# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'

# To use debugger
# gem 'debugger'

gem 'client_side_validations', '~> 3.2.1'

# Refinery CMS
gem 'refinerycms', '~> 2.0.10'

gem 'refinerycms-i18n', '~> 2.0.0'
#gem "refinerycms-settings", "~> 2.0.2"
gem 'refinerycms-imajax','~> 2.0.0', :git=>'git://github.com/Matho/refinerycms-imajax.git', :branch=>'2-0-stable'
gem 'refinerycms-page-images', '~> 2.0.0', :git=>'git://github.com/refinery/refinerycms-page-images.git', :branch=>'2-0-stable'
gem 'refinerycms-videojs', :git=>'git://github.com/Matho/refinerycms-videojs.git'
gem 'refinerycms-snippets', '~> 2.0.0' , :git=>'git://github.com/Matho/refinerycms-snippets.git', :branch=>"rails-3-1"
gem 'refinerycms-photo-gallery', '0.1.2'
gem "refinerycms-pc_banners", "~> 2.0.1", :git=>'git://github.com/Matho/refinerycms-pc_banners.git', :branch=>'master'
gem "refinerycms-codemirror", "~> 0.1.6"
gem 'refinerycms-registrations', :git=>'git://github.com/Matho/refinerycms-registrations.git', :branch=>'master', :ref=>'2732a6e77'

gem "refinerycms-contacts" , '~> 0.1.2'
gem 'refinerycms-news', :git=>'git://github.com/Matho/refinerycms-news.git', :branch=>'2-0-stable'

gem 'refinerycms-mailchimp', :git=>'git://github.com/Matho/refinerycms-mailchimp.git', :branch=>'refinery-2.0'
#:path=>'../GITHUB/refinerycms-mailchimp'



#gem 'refinerycms-search', '~> 2.0.0', :git => 'git://github.com/refinery/refinerycms-search.git', :branch => '2-0-stable'
#http://jgwmaxwell.github.com/refinerycms-pgsearch/
#https://rubygems.org/gems/refinerycms-polls

