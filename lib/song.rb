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

	['A','A','A','A','B','B','C'].group_by{|e| e}.map{|k, v| [k, v.length]}.to_h


	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genre_count = Hash.new
		@@genres.uniq.each do |genre|
      genre_count[genre] = @@genre.count.genre
		end
		genre_count
	end

end
