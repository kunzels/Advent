require "byebug"
require 'set'


# def encoding(data)
#     start = 0
#     i = 24
#     toCheck = data[i + 1]
#     checked = true
#     while checked == true
#         checked = false
#         number = nil
#         data[start..i].each do |num|
#             number = num
#             if data[start..i].include?(toCheck - num)
#                 start += 1
#                 i += 1
#                 toCheck = data[i + 1]
#                 checked = true
#                 break
#             end
#         end
#          if checked == false
#             start = 0
#             total = 0
#             while total < toCheck
#                 data[start..-1].each_with_index do |num, idx|
#                     total += num
#                     if total == toCheck
#                         data = data[start..(start + idx)].sort
#                         return data[0] + data[-1]
#                     elsif total > toCheck
#                         total = 0
#                         start += 1
#                         queue = data[start..-1]
#                         break
#                     end
#                 end
#             end
#         end
#     end
# end
# data = "".split("\n").map{|el| el.to_i}
# print encoding(data)

#Side problem, just including for fun. Airport connections, take in airport, connect to all other airports. 

# def travel(airports, routes, starting)
#     connections = connectionsConnected(airports, routes)
#     connections = connections.sort_by{|k,v| -v.length}.to_h
#     current = connections[starting]
#     count = 0
#     connections.each do |k, v|
#         test = current + v
#         if test.length > current.length
#             puts test
#             count += 1
#             current += v
#         end
#     end
    # connections.each do |k, v|
    #     puts k
    #     puts v 
    #     puts "----"
    # end
    
#     puts count += (airports.length - current.length)
# end

# def connectionsConnected(airports, routes)
#     connections = {}
#     airports.each do |port|
#         connections[port] = Set[]
#     end
#     routes.each do |route|
#         start = route[0]
#         ending = route[1]
#         connections[start] << ending
#         connections[start] << start
#     end
#     connections.each_with_index do |(k, v), idx|
#         connections.each_with_index do |(k2, v2), idx2|
#             if v2.include?(k)
#                 connections[k2] += connections[k]
#             end
#         end
#     end
#     return connections
# end

# travel(airports, routes, "LGA")



# def handheld(data)
#   checked = {}
#   result = accumOrFalse(data)
#   while result == false
#     changedData = data.dup
#     data.each_with_index do |code, idx|
#       test = code.split(" ")
#       if !checked.include?(idx) && (test[0] == "nop" || test[0] == "jmp")
#         checked[idx] = true
#         test[0] == "jmp" ? test = "nop" + " " + test[1] : test = "jmp" + " " + test[1]
#         changedData[idx] = test
#         result = accumOrFalse(changedData)
#         break 
#       end 
#     end
#   end
#   puts result
# end

# def accumOrFalse(data)
#     accum = 0
#     visited = {}
#     i = 0
#       while i < data.length
#         code = data[i].split(" ")
#         if code[0] === "acc"
#           accum += code[1].to_i
#           if visited[i + 1]
#             return false
#           else
#             visited[i] = true
#             i += 1
#           end
#         elsif code[0] == "nop"
#           if visited[i + 1]
#             return false
#           else
#             visited[i] = true
#             i += 1
#           end
#         elsif code[0] == "jmp"
#           if visited[i + code[1].to_i]
#             return false
#           else
#             visited[i] = true
#             i += code[1].to_i
#           end
#         end
#       end
#     return accum
# end

# data = "".split("\n")
# handheld(data)

# def handheld(data)
#   accum = 0
#   visited = {}
#   i = 0

#     while i < data.length
#       code = data[i].split(" ")
#       if code[0] === "acc"
#         accum += code[1].to_i
#         if visited[i + 1]
#           puts accum
#           break
#         else
#           visited[i] = true
#           i += 1
#         end
#       elsif code[0] == "nop"
#         if visited[i + 1]
#           puts accum
#           break
#         else
#           visited[i] = true
#           i += 1
#         end
#       elsif code[0] == "jmp"
#         if visited[i + code[1].to_i]
#           puts accum
#           break
#         else
#           i += code[1].to_i
#         end
#       end
#     end
#     puts accum
# end

# handheld(data)
# Needs improvement when time permits. Revisit using better ds.
# def handy2(data)
#     directBags = ["shiny gold"]
#     count = 0
#     searched = []
#     while !directBags.empty?
#         searching = directBags.pop
#         if searching[-1] == " "
#             searching = searching[0...-1]
#         end
#             data.each do |rule|
#                 conditions = rule.split("contain")
#                 holder = conditions[0][0..-7]
#                 held = conditions[1].split(',') 
#                 if holder == searching && held != " no other bags."
#                     held.each do |item|
#                         if item[1] == "1"
#                             directBags << item[3..-5]
#                             count += 1
#                         else
#                             item[1].to_i.times do 
#                                 directBags << item[3..-6]
#                                 count += 1
#                             end
#                         end
#                     end
#                     break
#                 end
#             end
#     end
#     puts count
# end
# data = "".split("\n")
# handy2(data)

# def handy(data)
#     directBags = ["shiny gold"]
#     count = 0
#     searched = []
#     while !directBags.empty?
        
#         searching = directBags.pop
#         if !searched.include?(searching)
#             data.each do |rule|
#                 conditions = rule.split("contain")
#                 holder = conditions[0][0..-7]
#                 held = conditions[1]
#                 if held.include?(searching) && !searched.include?(holder) && !directBags.include?(holder)
#                     directBags << holder
#                     count += 1
#                 end
#             end
#           searched << searching
#         end
#     end
#     puts count
# end

# handy2(data)

#problem  


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