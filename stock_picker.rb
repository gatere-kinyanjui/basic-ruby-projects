# frozen_string_literal: true

# TODO: 1. A final result of an array of two numbers
#       2. The first being the best day to buy a stock (best_buy),
#          the last being the best day to sell the stock (best_sell)
#       3. The numbers being returned are indices of the array provided
#       4. The first is, ideally, the index of the smallest number in the array
#       5. The second is, ideally, the index of the largest number in the array

test_stock = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_array)
  best_buy = 0
  best_sell = 0
  max_profit = 0

  stock_array.each_with_index do |buy_price, buy_day|
    stock_array.each_with_index do |sell_price, sell_day|
      next unless sell_day > buy_day && (sell_price - buy_price > max_profit)

      max_profit = sell_price - buy_price

      best_buy = buy_day
      best_sell = sell_day
    end
  end

  p "Best days to buy and sell respectively are #{[best_buy, best_sell]}"
end

stock_picker(test_stock)

# def stock_picker_refactored(stock_array)
#   best_buy = 0
#   best_sell = 0
#   max_profit = 0

#   stock_array.each_with_index do |price, day|
#     # Check only subsequent prices for potential profit
#     potential_profit = price - stock_array[best_buy]

#     # Update max_profit, buy_day and sell_day only if a higher profit is found
#     next unless potential_profit > max_profit && day > best_buy

#     max_profit = potential_profit
#     best_buy = stock_array.index(stock_array[best_buy]) # Ensure correct buy_day index
#     best_sell = day
#   end

#   p "Best days to buy and sell respectively are #{[best_buy, best_sell]}"
# end

# stock_picker_refactored(test_stock)
