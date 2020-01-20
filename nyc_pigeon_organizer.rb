def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  
  data.each do |attribute, data|
    if attribute == :color 
      data.each do |color, names|
        names.each do |index|
          if new_pigeon_hash[index][:color]
            new_pigeon_hash[index][:color] << color.to_s 
          else
            new_pigeon_hash[index] = {:color => [color.to_s]}
          end
        end
      end
    end
#    if attribute == :gender
#      data.each do |gender, names|
#        names.each |index|
#          if new_pigeon_hash[index]
#            new_pigeon_hash[index][:color] << color.to_s 
#          else
#            new_pigeon_hash[index] = {:color => [color.to_s]}
#          end
#      end
#    end
#    if attribute == :lives
#      data.each do |location, names|
        
#      end
#    end
  end
  p new_pigeon_hash
end