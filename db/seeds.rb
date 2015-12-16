# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by RefineryCMS Snippets engine
Refinery::Snippets::Engine.load_seed

# Added by Refinery CMS PhotoGallery engine
Refinery::PhotoGallery::Engine.load_seed


Refinery::Banners::Engine.load_seed

# Added by Refinery CMS Registrations extension
Refinery::RaceRegistrations::Engine.load_seed


# Added by Refinery CMS Contacts extension
Refinery::Contacts::Engine.load_seed

# Added by Refinery CMS News engine
Refinery::News::Engine.load_seed

# Added by Refinery CMS Recipes extension
Refinery::Mailchimp::Engine.load_seed
