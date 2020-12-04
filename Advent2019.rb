require "byebug"

#  current.join(",")

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


# opCode([])

#Part 2 - brute forced entries to find 52 96 (Possibly recurse and halving or doubling inputs based on output etc? )



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



# nums = []

# fuel(nums)


