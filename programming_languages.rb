require 'pry'

def reformat_languages(languages)
  	reformatted_lang_hash = {}
  	multi_style_arr = []
  	languages.each do |lang_style, lang_specs|
  		lang_specs.each do |lang_name, type|
  			lang_style_arr = []
  			if lang_name == :javascript
  				multi_style_arr << lang_style
  				type.each do |symb, val|
  					reformatted_lang_hash[lang_name] = {symb => val, :style => multi_style_arr}
				end
			else
  				lang_style_arr << lang_style
  				type.each do |symb, val|
  					reformatted_lang_hash[lang_name] = {symb => val, :style => lang_style_arr}
				end
			end
		end
	end
	reformatted_lang_hash
end

=begin
current format
{
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

expected format
{
  	:ruby => {
    	:type => "interpreted",
    	:style => [:oo]
  	},
  	:javascript => {
    	:type => "interpreted",
    	:style => [:oo, :functional]
  	},
  	:python => {
    	:type => "interpreted",
    	:style => [:oo]
  	},
  	:java => {
    	:type => "compiled",
    	:style => [:oo]
  	},
  	:clojure => {
    	:type => "compiled",
    	:style => [:functional]
  	},
  	:erlang => {
    	:type => "compiled",
    	:style => [:functional]
  	},
  	:scala => {
    	:type => "compiled",
    	:style => [:functional]
  	}
}
=end