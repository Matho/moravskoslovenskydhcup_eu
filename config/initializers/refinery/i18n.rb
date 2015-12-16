# encoding: utf-8

Refinery::I18n.configure do |config|
  config.enabled = true

  config.default_locale = :sk

  config.current_locale = :sk

  config.default_frontend_locale = :sk

  config.frontend_locales = [:sk, :en]

  #config.frontend_locales = [:sk, :cs, :en, :de, :pl, :hu]

  config.locales = {:sk=>"Slovenský", :en=>"English"}
  #config.locales = {:sk=>"Slovenský" ,:cs=>"Česky", :en=>"English",:de=>"Deutsch", :pl=>"Polski", :hu=>"Magyar"}

  #config.locales = {:en=>"English", :fr=>"Français", :nl=>"Nederlands", :"pt-BR"=>"Português", :da=>"Dansk", :nb=>"Norsk Bokmål", :sl=>"Slovenian", :es=>"Español", :it=>"Italiano", :de=>"Deutsch", :lv=>"Latviski", :ru=>"Русский", :sv=>"Svenska", :pl=>"Polski", :"zh-CN"=>"Simplified Chinese", :"zh-TW"=>"Traditional Chinese", :el=>"Ελληνικά", :rs=>"Srpski", :cs=>"Česky", :sk=>"Slovenský", :ja=>"日本語", :bg=>"Български"}
end
