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
 my_hash = {}
  
  languages.each do |language_style, name|
    name.each do |name, attribute|
      # attribute.each do |attribute, type_value|
      	if my_hash[name] == nil
      		my_hash[name] = {
      			:type => attribute[:type],
      			:style => [language_style]
      		}
      	else
      		my_hash[name][:style] << language_style
      	end
   	end
 end

  my_hash
 end	 

 puts reformat_languages(languages)
