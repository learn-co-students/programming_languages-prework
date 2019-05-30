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

  languages.each do |language_style, language_hash|
    language_hash.each do |language_name, language_type_hash|

      language_type_hash.each do |type, type_string|
        if new_hash[language_name].nil? 
          new_hash[language_name] = {}
        end 
        new_hash[language_name][:style] ||= []
        new_hash[language_name][:style] << language_style
        new_hash[language_name][:type] = type_string
      end 
    end 
  end
  new_hash 
end 

reformat_languages(languages)



# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#   }
# }

 
# def reformat_languages(languages)
#   new_hash = {}
#   languages.each do |type, name|
#     name.each do |key, value|
#       value.each do |k, v|
#       end 
#     end 
#   end 
# end

# reformat_languages(languages)

# def prints_name
#   prints "sean"
# end 

# languages[:new_key] = "value"

# puts languages