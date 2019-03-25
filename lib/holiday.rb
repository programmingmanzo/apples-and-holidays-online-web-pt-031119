require 'pry'
#require 'relative'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  #binding.pry
end

#supply = "Balloons"
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply 
  holiday_hash[:winter][:new_years] << supply
  #binding.pry 
end


#supply = Grill
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 
  #binding.pry
end

#season = :fall
#supply_array = ["Flags", "Parade Floats", "Italian Food"]
#holiday_name = :columbus_day

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  #code here
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
  #remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
  all_items = []
  holiday_hash[:winter].collect do |supply|
    supply.each do |items|
      if holiday_hash[:winter][items] != nil 
        all_items.concat(holiday_hash[:winter][items])
        #binding.pry
      end
    end
  end
  # return an array of all of the supplies that are used in the winter season
  all_items
end

#season = :winter
# holiday = {:christmas=>["Lights", "Wreath"], :new_years=>["Party Hats"]}
#holidays = :christmas 
#items = ["Lights", "Wreath"]

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.collect do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.collect do |holidays, items|
      puts "  #{holidays.to_s.gsub("_", " ").split.collect(&:capitalize).join(' ')}: #{items.join(", ")}"
      #binding.pry 
    end
  end 
end

#season = :summer  
#holiday  = {:fourth_of_july=>["Fireworks", "BBQ"]}
#holidays = :fourth_of_july
#items = ["Fireworks", "BBQ"]

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holidays, items|
      if items.include?("BBQ")
        bbq_holiday << holidays   
        #binding.pry 
      end
    end
  end
  bbq_holiday 
end







