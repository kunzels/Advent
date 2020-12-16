require "byebug"
require 'set'

###--------###
### DAY 16 ###
###--------###


# def formater(rules)
#     result = {}
#     rules.each do |rule|
#         held = rule.split(": ")
#         nums = held[1].split(" or ")
#         range1 = nums[0].split("-")
#         range2 = nums[1].split("-")
#         result[held[0]] = [range1[0].to_i, range1[1].to_i, range2[0].to_i, range2[1].to_i]
#     end
#     return result
# end

# def ticketChecker(data, rules, ticket)
#     newData = []
#     data.each do |ticket|
#         result = 0
#         ticket = ticket.split(',').map!{|el| el.to_i}
#         ticket.each do |number|
#             if number < 25 || number > 972
#                 result += 1
#                 break
#             end
#         end
#         newData << ticket if result == 0
#     end
#     positions = ruleChecker(newData, rules)
#     result = 1
#     positions.each do |k, v|
#         if k.include?("departure")
#             result *= ticket[v]
#         end
#     end
#     return result
# end

# def ruleChecker(data, rules)
#     notValid = Hash.new { |h, k| h[k] = Set[] }
#     result = {}
#     rules = formater(rules)
#     data.each do |ticket|
#         ticket.each_with_index do |num, idx|
#             rules.each do |rule, limits|
#                 if num < limits[0] || (num > limits[1] && num < limits[2]) || num > limits[3]
#                     notValid[rule] << idx
#                 end
#             end
#         end
#     end
#     while result.length < 19
#         notValid.each do |k, v|
#            if v.length == 19
#               (0..19).each do |num|
#                 if !v.include?(num)
#                     result[k] = num
#                     notValid.each do |k, v|
#                         v << num
#                     end
#                 end
#               end
#             end
#         end
#     end
#     return result
# end

# data = "".split("\n")
# rules = "".split("\n")
# ticket = [127,83,79,197,157,67,71,131,97,193,181,191,163,61,53,89,59,137,73,167]
# puts ticketChecker(data, rules, ticket)
# ticketChecker(data)




###--------###
### DAY 15 ###
###--------###


# def elfGame(nums)
#     hashed = {}
#     nums.each_with_index do |num, idx|
#         hashed[num] = idx + 1
#     end
#     nums << 0
#     (30000000 - nums.length).times do
#     current = nums[-1]
#         if hashed.include?(current)
#             holder = hashed[current]
#             hashed[current] = nums.length
#             nums << nums.length - holder
#         else
#             hashed[current] = nums.length
#             nums << 0
#         end
#     end
#     return nums[-1]
# end
# nums = [12,1,16,3,11,0]
# puts elfGame(nums)






###--------###
### DAY 14 ###
###--------###


# def bitMask(data)
#     mem = Hash.new(0)
#     data[1..].each do |portion|
#         current = portion.split("\n")
#         mask = current[0]
#         current[1..].each do |operation|
#             entry = operation.split(" = ")
#             address = entry[0].delete("^0-9").to_i
#             # result = masker(mask, entry[1])
#             result = decoder(mask, address, entry[1])
#             result.each do |memAddress|
#                 mem[memAddress.to_i(2)] = entry[1].to_i
#             end
#             # mem[address] = result.to_i(2)
#         end
#     end
#     puts mem.values.sum
# end

# def decoder(mask, address, value)
#     bitAddress = "%036b" % address
#     i = 0
#     temp = ""
#         while i < mask.length
#             if mask[i] == "0"
#                 temp += bitAddress[i]
#             elsif mask[i] == "1"
#                 temp += "1"
#             elsif mask[i] == "X"
#                 temp += "X"
#             end
#             i += 1
#         end
#     return permute(temp)
# end

# def permute(address)
#     queue = [address]
#     result = []
#     while !queue.empty?
#         temp = queue.shift
#         if !temp.include?("X")
#             result << temp
#         else
#             i = 0
#             while i < temp.length
#                 if temp[i] == "X"
#                     temp[i] = "0"
#                     queue << temp.dup
#                     temp[i] = "1"
#                     queue << temp.dup
#                     i = 0
#                     break
#                 end
#                 i += 1
#             end
#         end
#     end
#     return result
# end

# def masker(mask, numString)
#     toBit = "%036b" % numString
#     result = ""
#     i = 0
#     while i < mask.length
#         if mask[i] == "X"
#             result += toBit[i]
#         else
#             result += mask[i]
#         end
#         i += 1
#     end
#     return result 
# end

# data = "".split("mask = ")
# bitMask(data)

###--------###
### DAY 13 ###
###--------###

# def busSchedule(data)
#     time = 0;
#     stepSize = data[0]

#     i = 1
#     while i < data.length
#         bus = data[i]
#         while (time + i) % bus != 0
#             time += stepSize
#         end
#         stepSize *= bus
#         i += 1
#     end
#     return time
# end

# I just reasoned part one by using some division, didn't write an algo.
# Input contained x's.  Could have mapped, instead just brute replaced.
# data = [19,1,1,1,1,1,1,1,1,41,1,1,1,1,1,1,1,1,1,521,1,1,1,1,1,1,1,23,1,1,1,1,1,1,1,1,17,1,1,1,1,1,1,1,1,1,1,1,29,1,523,1,1,1,1,1,37,1,1,1,1,1,1,13]
# puts busSchedule(data)


###--------###
### DAY 12 ###
###--------###

# def rainRisk(data)
#     waypoint = [1, 10]
#     ship = [0, 0]
#     data.each do |movement|
#         move = movement[0]
#         amount = movement[1..].to_i
#         if move == "N" 
#             waypoint[0] += amount
#         elsif move == "E"
#             waypoint[1] += amount
#         elsif move == "S"
#             waypoint[0] -= amount
#         elsif move == "W"
#             waypoint[1] -= amount
#         elsif move == "R"
#             (amount / 90).times do
#                 hold = waypoint.pop
#                 waypoint.unshift(-hold)
#             end
#         elsif move == "L"
#             (amount / 90).times do
#                 hold = waypoint.shift
#                 waypoint.push(-hold)
#             end
#         elsif move == "F"
#             amount.times do
#                 ship[0] += waypoint[0]
#                 ship[1] += waypoint[1]
#             end
#         end
#     end
#     return ship[0].abs + ship[1].abs
# end
# data = "".split("\n")
# puts rainRisk(data)

#p1
# def rainRisk(data)
#     directions = ["east", "south", "west", "north"]
#     facing = "east"
#     eastWest = 0
#     northSouth = 0
#     data.each do |movement|
#         move = movement[0]
#         amount = movement[1..].to_i
#         if move == "N"
#             northSouth += amount
#         elsif move == "S"
#             northSouth -= amount
#         elsif move == "E"
#             eastWest += amount
#         elsif move == "W"
#             eastWest -= amount
#         elsif move == "L"
#             (amount / 90).times do 
#                 held = directions.pop
#                 directions.unshift(held)
#             end
#             facing = directions[0]
#         elsif move == "R"
#             (amount / 90).times do 
#                 held = directions.shift
#                 directions.push(held)
#             end
#             facing = directions[0]
#         elsif move == "F"
#             if facing == "east"
#                 eastWest += amount
#             elsif facing == "west"
#                 eastWest -= amount
#             elsif facing == "north"
#                 northSouth += amount
#             elsif facing == "south"
#                 northSouth -= amount
#             end
#         end
#     end 
#     return eastWest.abs + northSouth.abs
# end

# puts rainRisk(data)
# def find_missing_ranges(nums, lower, upper)
#     starting = nil
#     ending = nil
#     result = []
#     (lower..upper).each do |num|
#         debugger
#        if !nums.include?(num) && starting == nil
#            starting = num
#        elsif !nums.include?(num) && starting != nil
#            ending = num
#        elsif (nums.include?(num) && starting != nil) || num == upper
#           if ending == nil
#               result << starting.to_s 
#           else
#            result << starting.to_s + "->" + ending.to_s
#           end
#            starting = nil
#            ending = nil
#        end
#     end
#     result
# end
# find_missing_ranges([], 1, 1)

###--------###
### DAY 11 ###
###--------###

# data = "L.LL.LL.LL
# LLLLLLL.LL
# L.L.L..L..
# LLLL.LL.LL
# L.LL.LL.LL
# L.LLLLL.LL
# ..L.L.....
# LLLLLLLLLL
# L.LLLLLL.L
# L.LLLLL.LL".split("\n")

# def seating(data)
#     puts data
# end

# seating(data)

###--------###
### DAY 10 ###
###--------###

# def adapter(data)
#     total = 0
#     countOne = 0
#     countThree = 0
#     while total < data.max
#         if data.include?(total + 1)
#             total += 1
#             countOne += 1
#         elsif data.include?(total + 2)
#             total += 1
#         elsif data.include?(total + 3)
#             total += 3
#             countThree += 1
#         end
#     end
#     puts countOne * (countThree + 1)
# end 

# Tabulation made this easier.

# def possibilities(data)
#     tabbed = [nil,nil,nil,1]
#     data.each { |i| tabbed[i+3] = tabbed[i..i+2].compact.sum }
#     puts tabbed.last
 
    # Old attempt at memo.  Revisit.

    # return memo[target] if memo[target] > 0
    # # return 0 if data == nil || target == nil
    # return 1 if (!data.include?(target - 1) && !data.include?(target - 2) && !data.include?(target - 3))
    
    # if data.include?(target - 1)
    #     idx = data.find_index(target - 1)
    #     memo[target] += possibilities(data[(idx + 1)..-1], data[idx], memo)
    # end
    # if data.include?(target - 2)
    #     idx = data.find_index(target - 2)
    #     memo[target] += possibilities(data[(idx + 1)..-1], data[idx], memo)
    # end
    # if data.include?(target - 3)
    #     idx = data.find_index(target - 3)
    #     memo[target] += possibilities(data[(idx + 1)..-1], data[idx], memo)
    # end
    # puts memo
    # return memo[target] 
# end
# data = "".split("\n").map{|el| el.to_i}
# adapter(data)
# puts possibilities(data.sort)


###-------###
### DAY 9 ###
###-------###

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


###------------------------------------------------------------------------------------------------------------###
### Side problem, just including for fun. Airport connections, take in airport, connect to all other airports  ###
###------------------------------------------------------------------------------------------------------------###

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

###-------###
### DAY 8 ###
###-------###

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

###-------###
### DAY 7 ###
###-------###

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


###-------###
### DAY 6 ###
###-------###

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

###-------###
### DAY 5 ###
###-------###

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


###-------###
### DAY 4 ###
###-------###

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


###-------###
### DAY 3 ###
###-------###


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


###-------###
### DAY 2 ###
###-------###

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


###-------###
### DAY 1 ###
###-------###

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