

today = Date.today

last_day = Date.new(2020,12,31)

today.upto(last_day) do |date|
  unless date.strftime("%A").downcase == 'sunday'
    WorkDay.create!(date: date)
    puts "Added #{date.strftime('%A, %b %d')}"
  end
end
