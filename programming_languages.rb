=begin
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
=end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language_hash|
    language_hash.each do |language, types|
      new_hash[language] ||= types
      new_hash[language][:style] ||= []
      new_hash[language][:style] << type
    end
  end
  new_hash
end
