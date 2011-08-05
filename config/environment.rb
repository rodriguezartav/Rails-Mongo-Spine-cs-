# Load the rails application
require File.expand_path('../application', __FILE__)

config.gem "mongo_mapper"
# Initialize the rails application
MongoSpineRc5::Application.initialize!
