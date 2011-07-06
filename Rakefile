# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

#This next line is required to run rake on heroku, but will crash when run locally so needs to be commented out
require 'rake/dsl_definition'

Sucoin::Application.load_tasks
