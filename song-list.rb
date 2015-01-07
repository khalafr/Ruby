class SongList
	def initialize
		@songs = Array.new
	end

	def append(aSong)
		@songs.push(aSong)
		self
	end

	def deleteFirst
		@songs.shift
	end

	def deleteLast
		@songs.pop
	end

	def [](key)
		return @songs[key] if key.kind_of?(Integer)
		return @songs.find { |aSong| aSong.name == key }
	end



end

class Song
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
		@plays = 0
	end

	@@plays = 0
	attr_reader :name, :artist, :duration
	attr_writer :duration

	def durationInMinutes
		@duration/60.0
	end

	def durationInMinutes=(value)
		@duration = (value*60).to_i
	end

	def play
		@plays += 1
		@@plays += 1
		"This song: #{@plays} plays. Total #{@@plays} plays"
	end

	def to_s
		"Song: #{@name} == #{@artist} (#{@duration})"
	end
end


list = SongList.new

list.
	append(Song.new('title1', 'artist1', 1)).
	append(Song.new('title2', 'artist2', 2)).
	append(Song.new('title3', 'artist3', 3)).
	append(Song.new('title4', 'artist4', 4))

puts list[0]
