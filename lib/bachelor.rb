def get_first_name_of_season_winner(data, season)
  return_name = ""
  data[season].each do |hash|
    hash.each do |key, value|
      if key == "status" && value == "Winner"
      new_hash = hash
      new_hash.each do |key2, value2|
        if key2 == "name"
          return_name = value2.to_s.split(" ")
          return return_name[0]
        end
      end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, keys|
    keys.each do |hash|
      hash.each do |labels, values|
        if values == occupation
          return hash[:name]
          puts hash[:name]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
