# Problem
# You receive a credit C at a local store and would like to buy two items.
# You first walk through the store and create a list L of all available items.
# From this list you would like to buy two items that add up to the entire value of the credit.
# The solution you provide will consist of the two integers indicating the positions of the items in your list (smaller number first).

# Input
# The first line of input gives the number of cases, N. N test cases follow. For each test case there will be:
# One line containing the value C, the amount of credit you have at the store.
# One line containing the value I, the number of items in the store.
# One line containing a space separated list of I integers. Each integer P indicates the price of an item in the store.
# Each test case will have exactly one solution.
# Output

# For each test case, output one line containing "Case #x: " followed by the indices of the two items whose price adds up to the store credit.
# The lower index should be output first.


## TO COMPLETE
class StoreCredit
  def solve(input)
    credit = input[0].to_i
    prices = input[2].split().map(&:to_i)
    products_to_buy = []

    prices.each_with_index do |price, index|
      prices.each_with_index do |price2, index2|
        if (price + price2 == credit) && (index != index2)
          products_to_buy << index + 1
          products_to_buy << index2 + 1
          return products_to_buy.sort!.join(" ")
        end
      end
    end
  end

  def get_inputs(data_size)
    array = []
    path = "~/Desktop/store_credit/A-#{data_size}-practice.in"

    File.open(File.expand_path(path), 'rb') do |f|
      f.each_line do |line|
        array << line.strip
      end
    end

    array.shift
    array.each_slice(3).to_a
    ##Returns [["100", "3", "5 75 25"], ["200", "7", "150 24 79 50 88 345 3"], etc ]
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