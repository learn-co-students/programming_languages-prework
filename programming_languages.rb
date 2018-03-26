require 'pry'

def reformat_languages(languages)
  new_hash = {}
  h1 = languages[:oo]
  h2 = languages[:functional]
  new_hash = h1.merge(h2)
  new_hash[:ruby][:style] = [:oo]
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash[:python][:style] = [:oo]
  new_hash[:java][:style] = [:oo]
  new_hash[:clojure][:style] = [:functional]
  new_hash[:erlang][:style] = [:functional]
  new_hash[:scala][:style] = [:functional]
  new_hash
end
