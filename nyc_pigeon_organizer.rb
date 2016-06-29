def nyc_pigeon_organizer(data)
pigeon_list = {}

#Creates new hash with name
data.each {|attribute, info|
if attribute == :gender
  info.each {|male_female, name_array|
    name_array.each {|name|
      pigeon_list[name] = {}}}
end
  }

#Adds categories to new hash
pigeon_list.each {|name, empty_hash|
  data.each {|attribute, info| 
  empty_hash[attribute] = []}
    }

pigeon_list.each {|name, hash|
  hash.each {|attribute_new, array|

    data.each {|attribute_old, info|
      if attribute_old == attribute_new
        info.each {|info_key, info_array|
          info_array.each {|old_name|
            if old_name == name
              array << info_key.to_s
            end}
            }
          end}}

}

pigeon_list

end

