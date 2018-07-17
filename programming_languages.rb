require 'pry'
# this returns a single hash with the key showing the language andthe vlue equal to a hash containing a string for the key and an array as the value
def reformat_languages(language)
  # your code here (*** needs an end***)

  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }
    }
  }
  new_hash = {}

  #GOAL = {key = languages_by_style: value = {type=string: style=[array]}}
  #first iterate through the initial hash
   languages.each do |style, items|
     items.each do |name, info|
       info.each do |type, value|

          if new_hash.include?(name)
            new_hash[name][:style]<< style
          else
            new_hash[name] = {
              type=>value,
              style: [] << style
            }
          end
        end
      end
    end


new_hash
end
