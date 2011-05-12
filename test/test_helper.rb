ENV["RAILS_ENV"] = "test"

require 'rubygems'

require 'test/unit'
require 'active_support'
require 'active_support/test_case'

require 'active_record'

require 'active_record/fixtures'

require 'attribute_choices'

config = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))
ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")
ActiveRecord::Base.establish_connection(config[ENV['DB'] || 'sqlite3mem'])

ActiveRecord::Migration.verbose = false
load(File.dirname(__FILE__) + "/schema.rb")

