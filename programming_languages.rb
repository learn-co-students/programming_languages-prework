
require "pry"

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
 
#   }
# }

def reformat_languages(languages_by_style)
	languages = {}
  languages_by_style.each do |style_name, language_values| # loop thru :oo, :ruby layer
  	language_values.each do |language_name, language_object| # loop thru :ruby, :type layer
  		if !languages[language_name] # if new object hasn't been added to 
	  		languages[language_name] = { # add object with data
			    :type => language_object[:type],
			    :style => [style_name] # you can reach back up into nested scopes!!!!! o shit waddup
			  }
			else 
				languages[language_name][:style] = languages[language_name][:style] + [style_name] 
			end ## otherwise if it's been added to n looping thru again add new style name
  	end
  end
  languages
end


#   {
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

