def get_first_name_of_season_winner(data, season)
  data[season].each do |keys|
    keys.each do |i,v|
      if v == 'Winner'
          return keys["name"].split(' ')[0].to_s
        end
      end   
  end  
end

def get_contestant_name(data, occupation)
      data.values.each do |values|
        values.each do |i|
          if i["occupation"] == occupation
            return i["name"]
          end  
        end
      end  
end

def count_contestants_by_hometown(data, hometown)
  homeCounter = 0
    data.values.each do |i|
      i.each do |t|
        if t["hometown"] == hometown
        homeCounter += 1
        end
      end
    end 
homeCounter
end

def get_occupation(data, hometown)
    data.each do |i,k|
      k.each do |t|
        t.each do |p, j|
          if j == hometown
            return t["occupation"]
          end  
        end
      end
    end
end

def get_average_age_for_season(data, season)
  you_old_doh = 0
  how_many = 0
    data[season].each do |i|
      you_old_doh += i["age"].to_f
      how_many += 1
    end  
    (you_old_doh / how_many).round
end
