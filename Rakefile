require 'rake'
require 'rake/testtask'
require "bundler/gem_tasks"

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the attribute_choices plugin.'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
