require 'pry'
require 'pp'

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
  languages.each do |style_name, programming_languages|
      programming_languages.each do |language_name, language_type|
          if new_hash[language_name]
              new_hash[language_name][:type] = language_type[:type]
          else
              new_hash[language_name] = {:type => language_type[:type]}
          end

          if new_hash[language_name][:style].is_a?(Array)
              new_hash[language_name][:style] << style_name
          else
              new_hash[language_name][:style] = [style_name]
          end
      end
  end
  return new_hash
end
