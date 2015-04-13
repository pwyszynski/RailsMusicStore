class Musiccd
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :release_year, type: Integer
  field :price, type: Float
  field :description, type: String
  field :cover_url, type: String

  def cart_action(current_user_id)
	  if $redis.sismember "cart#{current_user_id}", id
	    "Remove from"
	  else
	    "Add to"
	  end
	end
end
