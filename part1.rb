def palindrome?(string)
  fixed_string = string.downcase.gsub(/\W/, '')
  fixed_string.eql?(fixed_string.reverse)
end

def count_words(string)
  h = Hash.new
  string.downcase.split(/\b/).each do |w|
    if w =~ /\w/
      if h.has_key?(w)
        h[w] += 1
      else
        h[w] = 1
      end
    end
  end
  return h
end

def date_string_to_day_seconds(string)
  
  if string =~ /\w+, \d{1,2} \w{3} \d{4} (\d{2}):(\d{2}):(\d{2}) \w+/i
    hour_24 = $1.to_i
    min = $2.to_i
    sec = $3.to_i
    return hour_24*60*60 + min*60 + sec
  elsif string =~ /\d{4}-\d{2}-\d{2} (\d{2}):(\d{2}):(\d{2})\w/i
    hour_24 = $1.to_i
    min = $2.to_i
    sec = $3.to_i
    return hour_24*60*60 + min*60 + sec
  elsif string =~ /\d{1,2}\/\d{1,2}\/\d{4} (\d{1,2}):(\d{2}):(\d{2}) (\w{2})/i
    hour = $1.to_i
    min = $2.to_i
    sec = $3.to_i
    am_or_pm = $4.downcase
    puts(am_or_pm)
    if am_or_pm.eql?("pm")
      hour = hour + 12
    return hour*60*60 + min*60 + sec
    end
  end

  #print(hour_12)
  #print(hour_24)

  #time_since_midnight = nil

  #if hour_24
    #time_since_midnight = hour_24*60*60 + min*60 + sec
  #elsif hour_12
    #if am_or_pm.eql?("pm")
      #hour_12 = hour_12 + 12
    #time_since_midnight = hour_12*60*60 + min*60 + sec
    #end
  #end

  #return time_since_midnight
end

