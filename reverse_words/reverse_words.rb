# Problem
# Given a list of space separated words, reverse the order of the words.
# Each line of text contains L letters and W words.
# A line will only consist of letters and space characters.
# There will be exactly one space character between each pair of consecutive words.

# Input
# The first line of input gives the number of cases, N.
# N test cases follow.
# For each test case there will a line of letters and space characters indicating a list of space separated words.
# Spaces will not appear at the start or end of a line.

# Output
# For each test case, output one line containing "Case #x: " followed by the list of words in reverse order.

class ReverseWords
  def solve(input)
    input = input.split()
    return input.join() if input.size == 1

    array = []
    for i in 0...input.length do
      array << input[input.length - 1 - i]
    end
    array.join(" ")
  end

  def get_inputs(data_size)
    array = []
    path = "~/Desktop/reverse_words/B-#{data_size}-practice.in"

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