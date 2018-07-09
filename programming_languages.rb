# require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_str = ""
  languages.each do |style, language|
    # puts "#{style}: #{language}"
    style_str = style
    # binding.pry
    language.each do |language, type|
      new_hash[language] = {type: type}
      puts type
      type.each do |type, value|
        new_hash[language] = {style: [style_str]}

        # puts style_str
        #
        # puts "beginning #{type}: #{value}"
        # binding.pry

        #
        #
        #
        # puts "after #{attribute}: #{value}"
        # puts style_str

      end
    end
  end
  puts new_hash

end
