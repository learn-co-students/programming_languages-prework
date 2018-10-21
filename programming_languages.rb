def reformat_languages(languages)
  # your code here

#   1.	{
# 2.	:ruby => {
# 3.	:type => "interpreted",
# 4.	:style => [:oo]
# 5.	},
# 6.	:javascript => {
# 7.	:type => "interpreted",
# 8.	:style => [:oo, :functional]
# 9.	},
# 10.	:python => {
# 11.	:type => "interpreted",
# 12.	:style => [:oo]
# 13.	},
# 14.	:java => {
# 15.	:type => "compiled",
# 16.	:style => [:oo]
# 17.	},
# 18.	:clojure => {
# 19.	:type => "compiled",
# 20.	:style => [:functional]
# 21.	},
# 22.	:erlang => {
# 23.	:type => "compiled",
# 24.	:style => [:functional]
# 25.	},
# 26.	:scala => {
# 27.	:type => "compiled",
# 28.	:style => [:functional]
# 29.	}
# 30.	}

  new_hash = {

  }

  languages.each do |style, language|
    languages[style].each do |language, type|
    languages[style][language].each do |key, value|
        if new_hash.include?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {

          }
          new_hash[language][:type] = value
          new_hash[language][:style] = [ ]
          new_hash[language][:style] << style
        end
      end
    end
  end
    new_hash
end
