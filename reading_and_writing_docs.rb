

# # Ruby Reading and Writing Documentation 






# # intro to ruby docs

# rubydoc.info/stdlib


# An Album Class that stores an array of songs
class Album
  include Enumerable

  # An array object of songs, each song is a string
  attr_reader :songs

  # creates a new Album instance with an empty songs array
  def initialize
    @songs = []
  end

  # add a song to the Album object"s songs array
  def add_song(song)
    songs << song
  end

  # Yield each song in the album to a block
  def each
    songs.each do |song|
      yield song
    end
  end

end

thirller = Album.new
thirller.add_song("Thriller")
thirller.add_song("Billie Jean")
p thirller.songs
