require "pry"
require "pp"

def reformat_languages(languages)
  # your code here
  reformatted_hash = {}

  languages.each do |style, languages_with_style|
    languages_with_style.each do |language, language_values|
      language_hash = {language => language_values}
      # binding.pry
      if reformatted_hash[language]
        reformatted_hash[language][:style] << style
      else
        language_hash[language][:style] = [style]
        reformatted_hash.merge!(language_hash)
      end
    end
  end

  reformatted_hash
end

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

# reformat_languages(languages)
