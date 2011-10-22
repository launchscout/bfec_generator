require "rails/generators"

class RailboneGenerator < Rails::Generators::Base
  desc "create directories to hold our backbone classes"
  def create_backbone_directories
    empty_directory Rails.root.join("app", "assets", "javascripts", "models")
    empty_directory Rails.root.join("app", "assets", "javascripts", "views")
    empty_directory Rails.root.join("app", "assets", "javascripts", "routers")
    empty_directory Rails.root.join("app", "assets", "javascripts", "collections")
  end
  
  def create_jasminerice
    empty_directory Rails.root.join("spec", "javascripts")
    create_file Rails.root.join("spec", "javascripts", "spec.js.coffee"), "# require jquery"
  end
end
