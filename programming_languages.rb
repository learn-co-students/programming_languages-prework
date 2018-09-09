require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language_hash| # |:oo, {:ruby =>{}, :javascript =>{}, etc}|
    language_hash.each do |language_key, attribute_hash| # |:ruby, {:type => "interpreted"}|
      attribute_hash.each do |attribute_key, value| # |:type, "interpreted"|
        if new_hash.key?(language_key) == false # checks if the new_hash has :ruby
          new_hash[language_key] = {} #if the .key? method is false then create a new key-value pair
        end
        if new_hash[language_key].key?(attribute_key) == false #checks if new_hash[:ruby] has :type
          new_hash[language_key][attribute_key] = value #if it doesn't then create a new key-val pair
        end
        new_hash[language_key][:style] ||= [] #creates a new key-val pair in new_hash[:ruby]
        #if i only used = [], the 2nd style for javascript :functional would have replaced the existing :oo in one of the iterations
        new_hash[language_key][:style] << style #pushes :oo into new_hash[:ruby][:style] value
      end
    end
  end
  new_hash
end
