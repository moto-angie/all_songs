class Album
  attr_reader :id, :title, :artists, :tracks, :duration_ms
  def initialize(id, album_name, artists)
    @id = id
    @title = album_name
    @artists = artists
    @tracks = []
  end

  def id
    @id
  end

  def summary
    tracks = ""
    duration = 0
    @tracks.each do |track|
      tracks += "- " + (track[:title] + "\n")
      duration += track[:duration_ms].to_f
    end

    @duration = (duration / 1000) / 60

    "\nName: #{@title}\nArtist(s): #{@artists}\nDuration (min): #{'%.2f' % @duration}\nTracks: #{tracks}"
  end

end
