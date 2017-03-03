def reformat_languages(languages)
  # your code here
  my_hash = {}
  languages[:oo].each do |key, value|
    my_hash[key] = value
    my_hash[key].merge!({:style => [:oo]})
  end
  languages[:functional].each do |key, value|
    my_hash[key] = value
    my_hash[key].merge!({:style => [:functional]})
  end
  my_hash[:javascript][:style] << :oo
  languages = my_hash
end
