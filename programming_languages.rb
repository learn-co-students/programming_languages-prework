require 'pry'

# Solution:
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }

def reformat_languages(languages)
  # create new empty hash that we will build as we iterate over the old hash
  new_hash = {}

  # iterate over first level of array, whose keys are styles (of languages)
  languages.each do | style, style_data |
    # iterate over second level of array, whose keys are language names
    style_data.each do | language, language_data |
      # make sure key-value pair for this language doesn't already exist in new hash
      if !new_hash[language]
        # add key-value pair for language and language data to new hash
        new_hash[language] = language_data
        # add key-value pair for style (from first level of array) stored in an array
        new_hash[language][:style] = [style]
      else
        # if key-value pair for language already exists, just need to shovel style onto array
        new_hash[language][:style] << style
      end
    end
  end
  # return our new hash
  new_hash
end

#
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
