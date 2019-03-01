class Song
  @@count   = []
	@@artists = []
	@@genres  = []

	attr_accessor :name, :artist, :genres


	def initialize (name, artist, genre)
    @name   = name
		@artist = artist
		@genre  = genre
	end


end
