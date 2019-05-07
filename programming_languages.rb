def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_type, lang_details|
    lang_details.each do |name,details|
      if new_hash[name]
        new_hash[name][:style] << lang_type
      else
        new_hash[name] = {
          :type => details[:type],
          :style => [lang_type]
        }
      end
    end
  end
  return new_hash  # your code here
end
