def replace_in_place(str)
  str.gsub(" ", "%")
end

str = "Hello There Twitch!"

puts replace_in_place(str)