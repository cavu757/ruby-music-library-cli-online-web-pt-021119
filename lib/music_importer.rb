require 'pry'

class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).grep (/.mp3\z/)
  end

  def import
    files.each {|file| Song.create_from_filename(file)}
  end

end
