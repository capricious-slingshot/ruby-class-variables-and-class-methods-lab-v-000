class Song
  @@count   = []
	@@artists = []
	@@genres  = []

	attr_accessor :name, :artist, :genre


	def initialize (name, artist, genre)
    @name   = name
		@artist = artist
		@genre  = genre
		@@count << self
	end


end
