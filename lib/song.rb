require 'pry'

class Song
  
<<<<<<< HEAD
  # extend Memorable
  extend Findable

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
=======
  include Memorable 
>>>>>>> 50338b3a24b13a4d6f85deb8a5bd17ea10034686

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
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
  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
