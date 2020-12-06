require "byebug"
require 'set'

#Set used for any yes answers, hash used for all yes answers.
# def customCustoms(data)
#     result = 0
#     data.each do |group|
#         arr = group.split("\n")
#         # checker = Set[]
#         checker = Hash.new(0)
#         arr.each do |person|
#             person.each_char do |char|
#                 checker[char] += 1
#             end
#         end
#         checker.each do |k, v|
#             result += 1 if v == arr.length
#         end
#     end
#     puts result
# end


# data = "".split("\n\n")
# customCustoms(data)



# def seatFind(arr)
#     # result = -1
#     result = []
#     arr.each do |pass|
#         row = -1
#         col = -1
#         low, high = 0, 127
#         pass[0..6].each_char do |char|
#             high = (high + low) / 2 if char == "F"        
#             low = (high + low) / 2 + 1 if char == "B"
#         end
#         row = high
#         low, high = 0, 7
#         pass[7..-1].each_char do |char|
#             high = (high + low) / 2 if char == "L"        
#             low = (high + low) / 2 + 1 if char == "R"
#         end 
#         col = high
#         result << ((row * 8) + col)
#         # result = ((row * 8) + col) if ((row * 8) + col) > result
#     end
#     result = result.sort
#     i = result.min
#     result.each do |id|
#         if id != i
#             puts i
#             break
#         end
#         i += 1
#     end
# end
# data = "".split("\n")

# seatFind(data)


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
#       if col + right > 30
#         col = col + right - 31 
#         row += down
#       else
#         col += right
#         row += down
#       end
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