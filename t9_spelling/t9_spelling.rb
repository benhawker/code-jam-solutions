# Problem
# The Latin alphabet contains 26 characters and telephones only have ten digits on the keypad.
# We would like to make it easier to write a message to your friend
# using a sequence of keypresses to indicate the desired characters.
# The letters are mapped onto the digits as shown below.
# To insert the character B for instance,
# the program would press 22.
# In order to insert two characters in sequence from the same key,
# the user must pause before pressing the key a second time.
# The space character ' ' should be printed to indicate a pause. For example, 2 2 indicates AA whereas 22 indicates B.


# Input
# The first line of input gives the number of cases, N. N test cases follow. Each case is a line of text formatted as
# desired_message
# Each message will consist of only lowercase characters a-z and space characters ' '. Pressing zero emits a space.
# Output
# For each test case, output one line containing "Case #x: " followed by the message translated into the sequence of keypresses.


class T9Spelling

  MAPPING = { " " => "0",
              "a" => "2",
              "b" => "22",
              "c" => "222",
              "d" => "3",
              "e" => "33",
              "f" => "333",
              "g" => "4",
              "h" => "44",
              "i" => "444",
              "j" => "5",
              "k" => "55",
              "l" => "555",
              "m" => "6",
              "n" => "66",
              "o" => "666",
              "p" => "7",
              "q" => "77",
              "r" => "777",
              "s" => "7777",
              "t" => "8",
              "u" => "88",
              "v" => "888",
              "w" => "9",
              "x" => "99",
              "y" => "999",
              "z" => "9999"
            }

  def solve(input)
    buttons_to_press = ''
    input.chars.each_with_index do |char, index|
      if index > 0 && input.size > 1
        if (input[index] == input[index - 1]) || (MAPPING[input[index]].count(MAPPING[input[index - 1]])) > 0
          buttons_to_press << " "
        end
      end
      buttons_to_press << MAPPING[char]
    end
    buttons_to_press
  end


  def get_inputs(data_size)
    array = []
    path = "~/Desktop/t9_spelling/C-#{data_size}-practice.in"

    File.open(File.expand_path(path), 'rb') do |f|
      f.each_line do |line|
        array << line.delete!("\n")
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
