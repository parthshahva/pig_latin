require "pig_latin/version"

module PigLatin
      def self.translate(string)
        array = string.split
        new_array = array.map do |x|
          PigLatin.translate_check(x)
          end
        new_string = new_array.join(' ')
        return new_string
      end
      def self.translate_check(string)
         if /^y/.match(string) != nil
            new_string = string.delete('y')
            return "#{new_string}yay"
          elsif /^[bcdfghjklmnpqrstvwxz]+/.match(string) != nil
            matcher = /[bcdfghjklmnpqrstvwxz]+/.match(string.downcase)
            matched = matcher[0]
            red = matched.length
            shortened = string[red..-1]
            new_string = "#{shortened}#{matched}ay"
          elsif /^[aeiou]/.match(string.downcase) != nil
          matcher = /[aeiou]+/.match(string.downcase)
          new_string = "#{string}way"
          else
            return string
          end
      end

end

