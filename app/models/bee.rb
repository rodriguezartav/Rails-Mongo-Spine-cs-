class Bee
  include MongoMapper::Document

  key :name, String
  key :email, String
  key :username, String
  key :password, String

end
