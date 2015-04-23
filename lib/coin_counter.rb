class String
  define_method('coin_counter') do
    change = self.to_i
    nickels = 0
    dimes = 0
    quaters = 0

    until  change < 5
      change = change - 5
      nickels += 1
    end

    nickels_output = nickels.to_s + " nickel"
    pennies = change
    pennies_output = pennies.to_s + " pennies"

    if nickels == 0
      output = pennies_output
    elsif nickels > 0
      output = nickels_output + ", " + pennies_output

    end
    output
  end
end
