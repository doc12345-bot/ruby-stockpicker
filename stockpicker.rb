def stockpicker(array)
    diff = 0
    result = [0,0]

    #Loop over the array
    array.each_with_index do |a, i|
        #Inner loop goes over the remaining elements of the array, starting from i +1
        (i + 1...array.length).each do |j|
        b = array[j]

            #Checks that sell date is later than buy date and that the diff is greater than any previously reported
            if b > a && (b - a) > diff
                #Updates variables
                diff = b - a
                result[0] = i
                result[1] = j
            end
        end
    end

    result
end

stock_array = [17,3,6,9,15,8,6,1,10,15,1]

puts "This is the stock price on each day: #{stock_array}."

outcome = stockpicker(stock_array)

puts "Best days to buy and sell: #{outcome}"