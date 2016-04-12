class CountingSheep
  def solve(input)
    return "INSOMNIA" if input == 0

    current = input
    seen_numbers = []

    loop do
      seen_numbers.concat(current.to_s.split(//))
      break if seen_numbers.uniq.size == 10
      current += input
    end
    current
  end

  def get_inputs(data_size)
    array = []
    path = "~/Desktop/counting_sheep/A-#{data_size}-practice.in"

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
      output = solve(input.to_i)
      puts "Case ##{count}: #{output}"
      count += 1
    end
  end
end


##Output of the Small Input

# Case #1: INSOMNIA
# Case #2: 10
# Case #3: 90
# Case #4: 110
# Case #5: 2475
# Case #6: 96
# Case #7: 801
# Case #8: 790
# Case #9: 92
# Case #10: 9000
# Case #11: 594
# Case #12: 900
# Case #13: 490
# Case #14: 198
# Case #15: 156
# Case #16: 900
# Case #17: 952
# Case #18: 90
# Case #19: 5478
# Case #20: 680
# Case #21: 920
# Case #22: 1253
# Case #23: 918
# Case #24: 203
# Case #25: 903
# Case #26: 1701
# Case #27: 904
# Case #28: 912
# Case #29: 936
# Case #30: 1096
# Case #31: 378
# Case #32: 924
# Case #33: 790
# Case #34: 90
# Case #35: 729
# Case #36: 1304
# Case #37: 2356
# Case #38: 1127
# Case #39: 390
# Case #40: 905
# Case #41: 1048
# Case #42: 90
# Case #43: 1390
# Case #44: 1107
# Case #45: 1197
# Case #46: 960
# Case #47: 900
# Case #48: 456
# Case #49: 590
# Case #50: 909
# Case #51: 190
# Case #52: 1296
# Case #53: 710
# Case #54: 189
# Case #55: 370
# Case #56: 1936
# Case #57: 940
# Case #58: 1038
# Case #59: 1458
# Case #60: 721
# Case #61: 70
# Case #62: 920
# Case #63: 792
# Case #64: 9000
# Case #65: 469
# Case #66: 424
# Case #67: 970
# Case #68: 396
# Case #69: 459
# Case #70: 1176
# Case #71: 90
# Case #72: 930
# Case #73: 798
# Case #74: 924
# Case #75: 30
# Case #76: 256
# Case #77: 574
# Case #78: 1136
# Case #79: 1190
# Case #80: 518
# Case #81: 980
# Case #82: 545
# Case #83: 504
# Case #84: 2380
# Case #85: 946
# Case #86: 792
# Case #87: 330
# Case #88: 830
# Case #89: 1276
# Case #90: 2145
# Case #91: 207
# Case #92: 301
# Case #93: 450
# Case #94: 819
# Case #95: 1001
# Case #96: 476
# Case #97: 900
# Case #98: 1930
# Case #99: 918
# Case #100: 470


##Output of the Large Input
# Case #1: INSOMNIA
# Case #2: 10
# Case #3: 90
# Case #4: 110
# Case #5: 5076
# Case #6: 653776
# Case #7: 620787
# Case #8: 4139307
# Case #9: 2074560
# Case #10: 920
# Case #11: 9999930
# Case #12: 4896896
# Case #13: 3634008
# Case #14: 724359
# Case #15: 2780712
# Case #16: 1702749
# Case #17: 3592625
# Case #18: 4973990
# Case #19: 5999952
# Case #20: 4650165
# Case #21: 900
# Case #22: 90000
# Case #23: 90
# Case #24: 733064
# Case #25: 602751
# Case #26: 90
# Case #27: 70
# Case #28: 92
# Case #29: 9999990
# Case #30: 2364340
# Case #31: 2309592
# Case #32: 640701
# Case #33: 5478
# Case #34: 1904864
# Case #35: 1867304
# Case #36: 2437860
# Case #37: 4297805
# Case #38: 908466
# Case #39: 235632
# Case #40: 3369444
# Case #41: 900000
# Case #42: 2908251
# Case #43: 9999910
# Case #44: 9000
# Case #45: 3744532
# Case #46: 207320
# Case #47: 1930628
# Case #48: 900
# Case #49: 349617
# Case #50: 918
# Case #51: 4324370
# Case #52: 4992768
# Case #53: 6999965
# Case #54: 2589608
# Case #55: 5999976
# Case #56: 6893796
# Case #57: 96
# Case #58: 1580455
# Case #59: 9000000
# Case #60: 4819105
# Case #61: 30
# Case #62: 4502340
# Case #63: 2356
# Case #64: 5630958
# Case #65: 1437630
# Case #66: 1783086
# Case #67: 6606173
# Case #68: 436700
# Case #69: 841592
# Case #70: 3910109
# Case #71: 308695
# Case #72: 9000000
# Case #73: 2211515
# Case #74: 3353460
# Case #75: 2427978
# Case #76: 1398730
# Case #77: 5999964
# Case #78: 3732690
# Case #79: 73315
# Case #80: 9000
# Case #81: 2173385
# Case #82: 3176700
# Case #83: 2877960
# Case #84: 3125017
# Case #85: 812889
# Case #86: 747801
# Case #87: 1640730
# Case #88: 2193000
# Case #89: 2741276
# Case #90: 4744590
# Case #91: 9999970
# Case #92: 1528252
# Case #93: 3129210
# Case #94: 2851130
# Case #95: 4997286
# Case #96: 1097403
# Case #97: 1219887
# Case #98: 90
# Case #99: 7999984
# Case #100: 90