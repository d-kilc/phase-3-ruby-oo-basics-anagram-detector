# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize word
        @word = word
    end

    def match array
        a_array = @word.scan /\w/
        array.select do |word|
            b_array = word.scan /\w/
            a_array.sort == b_array.sort
        end
    end
end

diaper = Anagram.new 'diaper'
puts diaper.match %w[hello world zombies pants dipper]