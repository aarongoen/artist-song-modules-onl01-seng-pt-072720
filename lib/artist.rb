require 'pry'

class Artist
  
<<<<<<< HEAD
  # extend Memorable
  extend Findable

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
=======
  include Memorable 
>>>>>>> 50338b3a24b13a4d6f85deb8a5bd17ea10034686

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super 
    @songs = []
  end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

>>>>>>> 50338b3a24b13a4d6f85deb8a5bd17ea10034686
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
  
<<<<<<< HEAD
=======
  extend 
  
>>>>>>> 50338b3a24b13a4d6f85deb8a5bd17ea10034686
end
