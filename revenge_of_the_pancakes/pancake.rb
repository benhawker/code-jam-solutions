class Pancake

  def solve(input)
    array = input.split(//)
    count = 0
    return count unless array.include?("-")

    while array.include?("-") do
      array.each do |element|

    end

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
