def nyc_pigeon_organizer(data)
  names = []
  data.values[0].each do |attribute, name|
    names.push(name)
  end
  names = names.flatten.uniq
  
  attribute = data.keys
  pigeon_list = {}
  puts attribute.first.class
  
  names.each do |name|
    attribute.each do |attribute|
      attributes = {}
      temp_list = []
      data[attribute] do |key, info|
        temp_list << key if info.include?(name)
      end
      attributes[attribute] = temp_list
    end
    pigeon_list[name] = attributes 
  end
  puts pigeon_list
  
  
  
end

data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
}

nyc_pigeon_organizer(data)