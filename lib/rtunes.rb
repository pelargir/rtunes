require 'rbosa'

class Reltunes
  VERSION = '1.0.0'
  attr_accessor :itunes
  
  def initialize
    @itunes = OSA.app('iTunes', :machine => '192.168.1.251', :username => 'john_doe', :password => 'secret')
  end
  
  def play; itunes.play; say("Tunes are playing"); end
  def pause; itunes.pause; say("Tunes are paused"); end
  def mute; itunes.mute = true; say("Tunes are muted"); end
  def unmute; itunes.mute = false; say("Tunes are unmuted"); end
  
  def current
    say itunes.current_track.name
  end
  
  def next
    itunes.next_track
    say itunes.current_track.name
  end
  
  def back
    itunes.back_track
    say itunes.current_track.name
  end
  
  def volume
    say itunes.sound_volume
  end
  
  def volume=(value)
    itunes.sound_volume = value.to_i
    say "Volume set to #{value}"
  end
  
  def sources
    sources = itunes.sources
    say sources.every(:name)
    sources
  end
  
  def playlists(value="Library")
    playlists = sources.detect { |e| e.name == value }.playlists
    say playlists.every(:name)
    playlists
  end
  
  def tracks(value="Music")
    tracks = playlists.detect { |e| e.name == value }.tracks
    say tracks.every(:name)
    tracks
  end
  
  def search(value)
    if (tracks = itunes.search(value)).any?
      say tracks.every(:name)
    else
      say "Nothing found for '#{value}'"
    end
  end
  
  alias :say :puts
end