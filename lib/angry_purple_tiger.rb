require "angry_purple_tiger/version"
require 'digest/md5'

module AngryPurpleTiger
  class Error < StandardError; end
  class << self

    # animals = %w(horse donkey cat dog)
    # adjectives = %w(quick lazy sleepy)
    # colors = %w(red green blue)
    def new(input_string)
      # get md5 hash of input string
      hexdigest = Digest::MD5.hexdigest(input_string)
      puts "hexdigest #{hexdigest}"

      # split hash into pairs of digits
      pairs = hexdigest.scan(/../)
      puts "pairs: #{pairs}"

      bytes = pairs.map { |pair| pair.to_i(16) }
      puts "bytes #{bytes}"

      compressed = compress(bytes,3)
      puts "compressed: #{compressed[0]}"
      return 'rapid grey rattlesnake'
    end

    private

    # Takes the md5 has of the input string,
    # Converts it to pairs of hexes
    # Converts those hexes to integers
    # Converts integers to bytes 
    # Looks up animal based on one of 256 possibilities
    def compress(bytes, target)

      length = bytes.length

      # Calculate the segment size (divide and round down)
      segSize = (length / target).floor

      #split bytes array into 'target' number of segments
      segments = bytes.each_slice(segSize).to_a
      puts segments[2]
      # # catch any left-over bytes in the last segment

      #TODO: fix this, the trailing 210 needs to be added to segments[2]
      # lastSeg = segments[segments.length -1]
      # puts lastSeg

      # const checksums = segments.map(x => x.reduce((acc, curr) => acc ^ curr));
      checksums = segments.reduce([]) do |acc, curr|
        acc << curr.reduce(:^)
      end
      puts "checksums #{checksums}"
      return 42
    end
  end
end
