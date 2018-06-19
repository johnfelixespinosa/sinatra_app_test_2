class Game <ActiveRecord::Base
  has_many :streamers

 def slug 
   name.downcase.gsub(" ","-")
 end

 def self.find_by_slug(slug)
   Game.all.find{|game| game.slug == slug}
 end


end
