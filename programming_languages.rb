
def reformat_languages(languages)
  # your code here
  # iterate through languages once, get oo and functional
  new_hash = {}
  languages.collect do |paradigm, language_info|
  # iterate through each type, get languages
  paradigm_array = []
  paradigm_array << paradigm
    language_info.collect do |language_name, type|
  # get the language
    new_hash[language_name] = type
    new_hash[language_name][:style] = paradigm_array
    end
  end
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end

# reformat_languages(languages)
