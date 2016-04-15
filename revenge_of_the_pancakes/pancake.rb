class Pancake

  def solve(input)
    array = input.split(//)
    count = 0
    prev = '0'
    return count unless array.include?("-")

    array.each do |x|
      if (prev == "+" && x == "-")
        count += 1
      elsif (prev == "-" && x == "+")
        count += 1
      end
      prev = x
    end
    (prev == "-") ? count + 1 : count
  end

  def get_inputs
    array = []
    path = "~/Desktop/revenge_of_the_pancakes/B-small-practice.in"

    File.open(File.expand_path(path), 'rb') do |f|
      f.each_line do |line|
        array << line.strip
      end
    end

    array.shift
    array
  end

  def output
    count = 1
    get_inputs.each do |input|
      output = solve(input)
      puts "Case ##{count}: #{output}"
      count += 1
    end
  end

end

##Correct output for small input
# Case #1: 1
# Case #2: 1
# Case #3: 2
# Case #4: 0
# Case #5: 3
# Case #6: 4
# Case #7: 5
# Case #8: 3
# Case #9: 7
# Case #10: 8
# Case #11: 6
# Case #12: 0
# Case #13: 4
# Case #14: 2
# Case #15: 3
# Case #16: 4
# Case #17: 6
# Case #18: 2
# Case #19: 5
# Case #20: 4
# Case #21: 2
# Case #22: 2
# Case #23: 1
# Case #24: 1
# Case #25: 7
# Case #26: 5
# Case #27: 2
# Case #28: 1
# Case #29: 1
# Case #30: 6
# Case #31: 6
# Case #32: 1
# Case #33: 1
# Case #34: 6
# Case #35: 4
# Case #36: 3
# Case #37: 3
# Case #38: 0
# Case #39: 3
# Case #40: 5
# Case #41: 2
# Case #42: 5
# Case #43: 2
# Case #44: 7
# Case #45: 1
# Case #46: 5
# Case #47: 4
# Case #48: 2
# Case #49: 2
# Case #50: 7
# Case #51: 3
# Case #52: 1
# Case #53: 7
# Case #54: 5
# Case #55: 8
# Case #56: 6
# Case #57: 2
# Case #58: 3
# Case #59: 4
# Case #60: 0
# Case #61: 5
# Case #62: 1
# Case #63: 10
# Case #64: 3
# Case #65: 9
# Case #66: 0
# Case #67: 3
# Case #68: 4
# Case #69: 3
# Case #70: 4
# Case #71: 0
# Case #72: 4
# Case #73: 4
# Case #74: 2
# Case #75: 3
# Case #76: 4
# Case #77: 1
# Case #78: 7
# Case #79: 5
# Case #80: 7
# Case #81: 6
# Case #82: 6
# Case #83: 4
# Case #84: 5
# Case #85: 5
# Case #86: 4
# Case #87: 6
# Case #88: 1
# Case #89: 3
# Case #90: 5
# Case #91: 4
# Case #92: 3
# Case #93: 2
# Case #94: 4
# Case #95: 2
# Case #96: 4
# Case #97: 5
# Case #98: 1
# Case #99: 8
# Case #100: 2