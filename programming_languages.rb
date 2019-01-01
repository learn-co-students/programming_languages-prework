require "pry"

def languages
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
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, languages_in_style|
    languages_in_style.each do |language, language_info|
      if !new_hash.has_key?(language)
        language_info[:style] = [style]
        new_hash[language] = language_info
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
