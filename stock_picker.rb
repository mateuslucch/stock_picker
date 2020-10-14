def stock_picker(stock_values)
  best_prices = [0, 0]

  for i in 0...(stock_values.length)
    for j in i...(stock_values.length)
      if (stock_values[j] - stock_values[i]) > (best_prices[1] - best_prices[0])
        best_prices = [stock_values[i], stock_values[j]]
      end
    end
  end
  [stock_values.index(best_prices[0]), stock_values.index(best_prices[1])]
end

stock_values = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts ""
puts "The values for each day are #{stock_values}"
puts ""
puts "Best price to buy and sell are in the day #{stock_picker(stock_values)[0]} and #{stock_picker(stock_values)[1]}, respectively."
