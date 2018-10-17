def nyc_pigeon_organizer(data)
  names = []
  data.values[0].each do |attribute, name|
    names.push(name)
  end
  names = names.flatten.uniq
  
  attribute = data.keys
  pigeon_list = {}
  puts attribute
  
  # names.each do |name|
  #   temp = {}
  #   attribute.each do |attribute|
  #     pigeon_list[name] = {attribute 
  #   end
  #   pigeon_list[name] = temp 
  # end
  # puts pigeon_list
  
  
  
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