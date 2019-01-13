require 'pry'

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


def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_hash|
    language_hash.each do  |language, type_hash|
      if new_hash[language].nil?
        new_hash[language] = {style: [style], type: type_hash[:type]}
        binding.pry
      else
        new_hash[language][:style] << style
        # binding.pry
      end
    end
    # binding.pry
  end

  new_hash
end

puts reformat_languages(languages)
