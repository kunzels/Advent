require "byebug"

# This can def be optimized and reconsidered.  But time, gotta read ctci...

# def passports(data)
#     newData = data.map! {|passport| passport.split(" ")}
#     result = 0
#     validEntries = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]
#     newData.each do |passport|
#         arr = []
#         passport.each do |entry|
#             test = entry.split(":")
#             arr << [test[0], test[1]]
#         end
#         next if !validEntries.all? {|el| arr.flatten.include?(el)}
#         valid = true
#         arr.each do |sub|
#             field = sub[0]
#             data = sub[1]
#             if field == "byr"
#                 if data.length != 4 || data.to_i < 1920 || data.to_i > 2002
#                     valid = false
#                     break
#                 end
#             elsif field == "iyr"
#                 if data.length != 4 || data.to_i < 2010 || data.to_i > 2020
#                     valid = false
#                     break
#                 end
#             elsif field == "eyr"
#                 if data.length != 4 || data.to_i < 2020 || data.to_i > 2030
#                     valid = false
#                     break
#                 end
#             elsif field == "hgt"
#                 if !data.include?("cm") && !data.include?("in")
#                     valid = false
#                     break
#                 elsif data.include?("cm") 
#                     if data.to_i < 150 || data.to_i > 193
#                         valid = false
#                         break
#                     end
#                 elsif data.include?("in")
#                     if data.to_i < 59 || data.to_i > 76 
#                         valid = false
#                         break
#                     end
#                 end
#             elsif field == "hcl"
#                 validChars = "0123456789abcdef"
#                 if data[0] != "#" || data.length != 7 || !data[1..-1].split("").all? {|el| validChars.include?(el)}
#                     valid = false
#                     break
#                 end
#             elsif field == "ecl"
#                 validColors = ["amb","blu","brn","gry","grn","hzl","oth"]
#                 if !validColors.include?(data)
#                     valid = false
#                     break
#                 end
#             elsif field == "pid"
#                 validNums = "0123456789"
#                 if data.length != 9 || !data.split("").all? {|el| validNums.include?(el)}
#                     valid = false
#                     break
#                 end
#             end
#         end
#         result += 1 if valid == true
#     end
#     return result
# end

# data = ("").split("\n\n")
# puts passports(data)

# def toboggan(data, right, down)
    
#     count = 0
#     col = 0
#     row = 0
#     while row < data.length - down
#         if col + right > 30
#             col = col + right - 31 
#             row += down
#         else
#             col += right
#             row += down
#         end
#         count += 1 if data[row][col] == "#"
#     end
#     return count
# end

# data = ("").split("\n")

# puts toboggan(data, 1, 2)

# def validPassTwo?(data)
#     arr = data.split(",")
#     count = 0
#      arr.each do |str|
#         rules, password = str.split(': ')
#         pos1, up = rules.split("-")
#         pos2, char = up.split(" ")
#         pos1 = pos1.to_i - 1
#         pos2 = pos2.to_i - 1
#         count += 1 if (password[pos1] == char) ^ (password[pos2] == char)
#     end
#     count
# end
# 66 153 79 92 33
# def validPass?(data)
#     arr = data.split(",")
#     count = 0
#     arr.each do |str|
#         rules, password = str.split(': ')
#         low, up = rules.split("-")
#         high, num = up.split(" ")
#         nums = password.count(num) 
#         count += 1 if nums >= low.to_i && nums <= high.to_i
#     end
#     count
# end

# Get data from site ^ 
# require 'set' 

# def getterThree(arr)
#     hash = {}
#     arr.each_with_index do |el, idx|
#         arr.each_with_index do |el2, idx2|
#             if idx2 > idx
#                 hash[el + el2] = [el, el2]
#             end
#         end
#     end
#     arr.each do |el|
#         if hash.has_key?(2020 - el)
#             puts el * hash[2020 - el][0] * hash[2020-el][1]
#         end
#     end
# end

# def getter(arr)
#     s1 = Set[]
#     arr.each do |el|
#         puts ((2020 - el) * el) if s1.include?(2020 - el)
#         s1 << el
#     end
# end


# arr = []


# getterThree(arr)