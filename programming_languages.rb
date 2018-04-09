require "pry"

def reformat_languages(languages)
  new_hash = {}
  #build the hash
  languages.each do |org_sty_key, org_sty_hash|
    org_sty_hash.each do |org_lng_key, org_lng_hash|
      new_hash[org_lng_key] = {
        :type => org_lng_hash[:type],
        :style => []
      }
    end
  end
  languages.each do |org_sty_key, org_sty_hash|
    org_sty_hash.each do |org_lng_key, org_lng_hash|
      new_hash[org_lng_key][:style] << org_sty_key
    end
  end
  new_hash
end
