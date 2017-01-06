module ProductsHelper

def self.search(search)
 	 self.where("name LIKE (?) OR category LIKE (?)", "%#{search}%", "%#{search}%")
	end
end
