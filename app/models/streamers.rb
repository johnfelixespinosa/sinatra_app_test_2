class Streamer <ActiveRecord::Base
  has_many :games

  def self.find_by_name(name)
    Streamer.all.find{|streamer| streamer.name == name}
  end

end
