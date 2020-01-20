def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  
  data.each do |attribute, data|
    if attribute == :color 
      data.each do |color, names|
        names.each do |index|
          new_pigeon_hash[index] = {:color => color.to_s}
        end
      end
    end
  end
  p new_pigeon_hash
end