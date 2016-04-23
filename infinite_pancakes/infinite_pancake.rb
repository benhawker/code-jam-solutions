class InfinitePancake

  def solve(input)
    ## An input is a string such as "1 2 1 2" then convert to [1, 2, 1, 2]
    array = input.split(" ").map { |s| s.to_i }
    max_height = array.max ##Maximum stack height

    minutes_taken = []
    minutes_required = 0

    1.upto(max_height).map do |height|
      x = height
      array.each do |pancake|
        x += (pancake -1) / height
      end
      minutes_taken << sum
    end

    minutes_taken.min
  end

  def get_inputs(data_size)
    array = []
    path = "~/Desktop/code_jam/infinite_pancakes/B-#{data_size}-practice.in"
    count = 1

    File.open(File.expand_path(path), 'rb') do |f|
      f.each_line do |line|
        array << line.strip if (count % 2 != 0)
        count += 1
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

