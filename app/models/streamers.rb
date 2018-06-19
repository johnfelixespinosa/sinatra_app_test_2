class Streamer <ActiveRecord::Base
  has_many :games

 def slug 
   name.downcase.gsub(" ","-")
 end

 def self.find_by_slug(slug)
   Streamer.all.find{|streamer| streamer.slug == slug}
 end


end
