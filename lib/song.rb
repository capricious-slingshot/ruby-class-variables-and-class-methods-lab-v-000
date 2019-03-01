class Song
  @@count   = 0
	@@artists = []
	@@genres  = []

	attr_accessor :name, :artist, :genre


	def initialize (name, artist, genre)
    @name   = name
		@artist = artist
		@genre  = genre
		@@count += 1
		@@artists << @artist
		@@genres  << @genre
	end


  def self.count
    @@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		# genre_count = Hash.new
		# @@genres.uniq.each {|g| genre_count[g] = @@genres.count(g)}
		# genre_count
		self.count(@@genres)
	end

	def self.artist_count
		# artist_count = Hash.new
		# @@artists.uniq.each {|a| artist_count[a] = @@artists.count(a)}
		# artist_count
		self.count(@@artists)
	end

	def self.count(arr)
		count = Hash.new
		arr.uniq.each {|i| count[i] = arr.count(i)}
		count
	end

end
