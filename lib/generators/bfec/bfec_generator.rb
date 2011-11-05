require "rails/generators"

class BfecGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  desc "create directories to hold our backbone classes"
  def create_backbone_directories
    empty_directory Rails.root.join("app", "assets", "javascripts", "models")
    empty_directory Rails.root.join("app", "assets", "javascripts", "views")
    empty_directory Rails.root.join("app", "assets", "javascripts", "routers")
    empty_directory Rails.root.join("app", "assets", "javascripts", "collections")
    empty_directory Rails.root.join("app", "assets", "templates")
  end
  
  def add_gems
    gem 'npm_assets', :path => "/Users/superchris/dev/npm_assets"
    gem "jasminerice", :git => "git://github.com/bradphelan/jasminerice.git"
  end
  
  def create_jasminerice
    empty_directory Rails.root.join("spec", "javascripts")
    create_file Rails.root.join("spec", "javascripts", "spec.js.coffee"), "#= require application"
  end
  
  def create_manifest
    template "application.js.coffee.erb", "app/assets/javascripts/application.js.coffee"
    remove_file "app/assets/javascripts/application.js"
  end
end
