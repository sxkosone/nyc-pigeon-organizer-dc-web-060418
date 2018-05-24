require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  org_pigeons = {}
  data.each do |attribute, data|
    #binding.pry
    data.each do |quality, name_array|
      #binding.pry
      name_array.each do |pigeon|
        #binding.pry
        if org_pigeons.keys.include?(pigeon)
          #add info to existing pigeon_name hash
          if org_pigeons[pigeon].key?(attribute)
            org_pigeons[pigeon][attribute] << quality.to_s
          else
            org_pigeons[pigeon][attribute] = [quality.to_s]
          end
        else
          #create a new hash for this pigeon
          org_pigeons[pigeon] = {attribute => [quality.to_s]}
        end
      end
    end
  end
  org_pigeons
end