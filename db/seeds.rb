
11.times do |i|
    Team.create(name: "U-#{i + 7}")
end

11.times do |i|
    League.create(name: "U-#{i + 7}")
end