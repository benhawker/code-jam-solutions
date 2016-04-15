class StandingOvation

  def solve(input)

    array = input.split(//).map(&:to_i)
    array.delete_at(1) ##Remove empty array[1]
    array.shift ##Remove max shyness in array[0]

    number_standing = 0
    number_people_needed = 0

    array.each_with_index do |number_of_people, shyness_level|

      if number_standing < shyness_level
        number_people_needed += (shyness_level - number_standing)
        number_standing += (shyness_level - number_standing)
      end
      number_standing += number_of_people
    end

    return number_people_needed
  end

  def get_inputs(data_size)
    array = []
    path = "~/Desktop/code_jam/standing_ovation/A-#{data_size}-practice.in"

    File.open(File.expand_path(path), 'rb') do |f|
      f.each_line do |line|
        array << line.strip
      end
    end
    array.shift
    array
  end

  #'small' or 'large' data_size input
  def output(data_size: "small")
    count = 1
    get_inputs(data_size).each do |input|
      output = solve(input)
      puts "Case ##{count}: #{output}"
      count += 1
    end
  end

end


##Output for the small input
# Case #1: 0
# Case #2: 1
# Case #3: 6
# Case #4: 0
# Case #5: 0
# Case #6: 0
# Case #7: 0
# Case #8: 1
# Case #9: 0
# Case #10: 2
# Case #11: 0
# Case #12: 0
# Case #13: 6
# Case #14: 2
# Case #15: 0
# Case #16: 0
# Case #17: 2
# Case #18: 3
# Case #19: 6
# Case #20: 0
# Case #21: 6
# Case #22: 1
# Case #23: 0
# Case #24: 0
# Case #25: 0
# Case #26: 0
# Case #27: 2
# Case #28: 0
# Case #29: 0
# Case #30: 6
# Case #31: 0
# Case #32: 2
# Case #33: 2
# Case #34: 2
# Case #35: 0
# Case #36: 0
# Case #37: 1
# Case #38: 0
# Case #39: 1
# Case #40: 4
# Case #41: 0
# Case #42: 0
# Case #43: 0
# Case #44: 0
# Case #45: 2
# Case #46: 0
# Case #47: 2
# Case #48: 0
# Case #49: 6
# Case #50: 1
# Case #51: 0
# Case #52: 0
# Case #53: 6
# Case #54: 1
# Case #55: 0
# Case #56: 0
# Case #57: 2
# Case #58: 0
# Case #59: 1
# Case #60: 3
# Case #61: 0
# Case #62: 0
# Case #63: 2
# Case #64: 0
# Case #65: 1
# Case #66: 1
# Case #67: 1
# Case #68: 0
# Case #69: 0
# Case #70: 0
# Case #71: 2
# Case #72: 0
# Case #73: 6
# Case #74: 0
# Case #75: 1
# Case #76: 0
# Case #77: 1
# Case #78: 1
# Case #79: 0
# Case #80: 0
# Case #81: 0
# Case #82: 0
# Case #83: 2
# Case #84: 1
# Case #85: 0
# Case #86: 6
# Case #87: 0
# Case #88: 0
# Case #89: 3
# Case #90: 0
# Case #91: 0
# Case #92: 0
# Case #93: 0
# Case #94: 0
# Case #95: 1
# Case #96: 0
# Case #97: 0
# Case #98: 6
# Case #99: 2
# Case #100: 6