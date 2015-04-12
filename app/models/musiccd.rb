class Musiccd
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :release_year, type: Integer
  field :price, type: Float
  field :description, type: String
  field :cover_url, type: String
end
