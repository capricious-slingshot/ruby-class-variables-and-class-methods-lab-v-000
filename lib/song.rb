class Song
  @@count   = 0
	@@artist = []
	@@genres  = []

	attr_accessor :name, :artist, :genre


	def initialize (name, artist, genre)
    @name   = name
		@artist = artist
		@genre  = genre
		@@count += 1
		@@artist << @artist
	end


end
