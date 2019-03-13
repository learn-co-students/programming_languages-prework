def reformat_languages(languages)
  new_hash = {}
  languages.each do |keys, values|
    values.each do |values, types|
      new_hash[values] = types
      new_hash[values][:style] = []
    end
  end
  new_hash[:ruby][:style] << :oo
  new_hash[:javascript][:style].push(:oo, :functional)
  new_hash[:python][:style] << :oo
  new_hash[:java][:style] << :oo
  new_hash[:clojure][:style] << :functional
  new_hash[:erlang][:style] << :functional
  new_hash[:scala][:style] << :functional
  new_hash
end
