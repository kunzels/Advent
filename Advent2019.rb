# require "byebug"

# def opCode(code)
# i = 0
# tempNoun = code[1]
# tempVerb = code[2]
# program = nil
# first = nil
# second = nil
# update = nil
# result = []
#     code.each_with_index do |num, idx|
#         if num == 99 && i == idx
#             puts code[0]
#         end
#         program = "addition" if idx == i && num == 1
#         program = "multiplication"if idx == i && num == 2
#         first = code[num] if idx == i + 1  
#         second = code[num] if idx == i + 2
#         update = code[num] if idx == i + 3
#         code[num] = addition(first, second) if program == "addition" && i + 3 == idx
#         code[num] = multiplication(first, second) if program == "multiplication" && i + 3 == idx
#         i += 4 if i + 3 == idx
#     end
#      return code
# end

# def addition(first, second)
#     return first + second
# end

# def multiplication(first, second)
#     return first * second
# end


# opCode([1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,10,1,19,1,19,5,23,1,23,9,27,2,27,6,31,1,31,6,35,2,35,9,39,1,6,39,43,2,10,43,47,1,47,9,51,1,51,6,55,1,55,6,59,2,59,10,63,1,6,63,67,2,6,67,71,1,71,5,75,2,13,75,79,1,10,79,83,1,5,83,87,2,87,10,91,1,5,91,95,2,95,6,99,1,99,6,103,2,103,6,107,2,107,9,111,1,111,5,115,1,115,6,119,2,6,119,123,1,5,123,127,1,127,13,131,1,2,131,135,1,135,10,0,99,2,14,0,0])
# opCode([1,9,10,3,2,3,11,0,99,30,40,50])

#Part 1 - brute forced entried to find 52 96 (Possibly recurse and halving or doubling inputs based on output etc? )



# def fuel(nums)
#     total = 0
#     nums.each do |num|
#         reduced = (num / 3).floor - 2
#         while reduced >= 0
#             total += reduced
#             reduced = (reduced / 3).floor - 2
#         end
#     end
#     puts total
# end



# nums = [109364,
# 144584,
# 87498,
# 130293,
# 91960,
# 117563,
# 91730,
# 138879,
# 144269,
# 89058,
# 89982,
# 115609,
# 114728,
# 85422,
# 111803,
# 148524,
# 130035,
# 107558,
# 138936,
# 95622,
# 58042,
# 50697,
# 86848,
# 123301,
# 123631,
# 143125,
# 76434,
# 78004,
# 91115,
# 89062,
# 58465,
# 141127,
# 139993,
# 80958,
# 104184,
# 145131,
# 87438,
# 74385,
# 102113,
# 97392,
# 105986,
# 58600,
# 147156,
# 54377,
# 61409,
# 73552,
# 87138,
# 63168,
# 149602,
# 111776,
# 113191,
# 80137,
# 145985,
# 145177,
# 73192,
# 141631,
# 132979,
# 52565,
# 126574,
# 92005,
# 134655,
# 115894,
# 89175,
# 127328,
# 139873,
# 50072,
# 78814,
# 134750,
# 120848,
# 132950,
# 126523,
# 58206,
# 70885,
# 85482,
# 70889,
# 100029,
# 68447,
# 95111,
# 79896,
# 138650,
# 83079,
# 83112,
# 117762,
# 57223,
# 138122,
# 145193,
# 85251,
# 103331,
# 134501,
# 77023,
# 148189,
# 141341,
# 75994,
# 67024,
# 137767,
# 86260,
# 58705,
# 58771,
# 60684,
# 79655]

# fuel(nums)


