function exchange_money(budget, exchange_rate)
    return budget / exchange_rate
end

function get_change(budget, exchanging_value)
    return exchanging_value - budget
end

function get_value_of_bills(denomination, number_of_bills)
    return denomination * number_of_bills
end

function get_number_of_bills(amount, denomination)
    return floor(amount / denomination)
end

function get_leftover_of_bills(amount, denomination)
    return amount % denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    actual_rate = exchange_rate + (spread / 100)
    val = exchange_money(budget, actual_rate)
    bills = get_number_of_bills(val, denomination)
    return bills * denomination

end
