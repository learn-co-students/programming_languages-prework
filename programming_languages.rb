require"pry"

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
  languages.each do |style_of_language_key, style_of_language_hash|
    style_of_language_hash.each do |language_name_key, language_attributes_hash|
      language_attributes_hash.each do |type_key, type_value|
       if new_hash[language_name_key] == nil 
         new_hash[language_name_key] = {type_key =>  type_value, :style => [style_of_language_key]}
       else  new_hash[language_name_key][:style] << style_of_language_key
       end    
      end 
    end 
  end 
  new_hash
end 