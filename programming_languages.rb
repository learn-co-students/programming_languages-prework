
require 'pry'
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_data|
    new_hash[:ruby] = {:type => "interpreted"}
    new_hash[:ruby][:style] = [:oo]
    new_hash[:javascript] = {:type => "interpreted"}
    new_hash[:javascript][:style] = [:oo, :functional]
    new_hash[:python] = {:type => "interpreted"}
    new_hash[:python][:style] = [:oo]
    new_hash[:java] = {:type => "compiled"}
    new_hash[:java][:style] = [:oo]
    new_hash[:clojure] = {:type => "compiled"}
    new_hash[:clojure][:style] = [:functional]
    new_hash[:erlang] = {:type => "compiled"}
    new_hash[:erlang][:style] = [:functional]
    new_hash[:scala] = {:type => "compiled"}
    new_hash[:scala][:style] = [:functional]

    #binding.pry
end
new_hash
end
